import { getJreBin, getValidatorPath, getFshOutputFolder, readSushiConfig, getDependencies, getValidationOutputPath } from "./utils.js";
import { execa } from 'execa';

const igFolder = getFshOutputFolder();
const java = getJreBin();
const jar = getValidatorPath();
const sushiConfig = readSushiConfig();
const outputPath = getValidationOutputPath() + '.ig.json'

const getFhirVersion = () => {
    return sushiConfig?.fhirVersion;
};

const runValidate = async () => {
    if (java && jar) {
        const command = `"${java}" -Dfile.encoding=UTF-8 -jar "${jar}" "${igFolder}" -version ${getFhirVersion()} -jurisdiction global ${getDependencies(sushiConfig)}  -output ${outputPath}`;
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