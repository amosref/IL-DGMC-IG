import { 
    getJreBin, 
    getValidatorPath, 
    getExamplesFolder, 
    readSushiConfig, 
    getFshOutputFolder, 
    getDependencies, 
    getValidationOutputPath 
} from "./utils.js";
import { execa } from 'execa';

const examplesFolder = getExamplesFolder();
const igFolder = getFshOutputFolder();
const java = getJreBin();
const jar = getValidatorPath();
const sushiConfig = readSushiConfig();
const outputPathJson = getValidationOutputPath() + '.ex.json'
const outputPathHtml = getValidationOutputPath() + '.ex.html'

const getFhirVersion = () => {
    return sushiConfig?.fhirVersion;
};

const runValidate = async () => {
    if (java && jar) {
        const command = `"${java}" -Dfile.encoding=UTF-8 -jar "${jar}" "${examplesFolder}" -version ${getFhirVersion()} -jurisdiction global -ig "${igFolder}" ${getDependencies(sushiConfig)} -output ${outputPathJson} -html-output ${outputPathHtml}`;
        try {
            const subprocess = execa(command);
            subprocess.stdout.pipe(process.stdout);
            await subprocess;
            return true
        } catch (e) {
            throw new Error('Failed :(')    
        }
    } else {
        throw new Error('Failed to find JRE :(')
    }
};

runValidate();