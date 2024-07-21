import path from 'path';
import fs from 'fs-extra';
import axios from 'axios';
import yaml from 'js-yaml';
import jsonata from 'jsonata';

const server = axios.create({ timeout: 15000 });

const workingDir = path.resolve('.');

const sushiConfigPath = path.join(workingDir, 'sushi-config.yaml');

export const fetch = async (url) => {
    console.log(`Fetching ${url}...`);
    const res = await server.get(url, { responseType: 'arraybuffer' });
    return res;
};

export const getJrePath = () => {
    return path.join(workingDir, 'jre');
};

const getJreVersionPath = () => {
    const jrePath = getJrePath();
    if (fs.existsSync(jrePath) === false) {
        console.log('No JRE versions installed :(');
        return undefined;
    };

    const versions = fs.readdirSync(jrePath);
    if (versions.length === 1) {
        return path.join(jrePath, versions[0]);
    };
    if (versions.length > 1) {
        console.log('Multiple versions of jre found... Deleting all of them!');
    };
    if (versions.length === 0) {
        console.log('No JRE versions installed :(');
    };
    fs.rmSync(jrePath, { recursive: true, force: true });
    return undefined;
};

export const getJreBin = () => {
    const versionPath = getJreVersionPath();
    if (versionPath) {
        return path.join(versionPath, 'bin', 'java');
    };
    return undefined;
};

export const getValidatorPath = () => {
    return path.join(workingDir, 'validator_cli.jar');
};

export const getValidationOutputPath = () => {
    return path.join(workingDir, 'validator_cli_output');
};

export const getFshOutputFolder = () => {
    return path.join(workingDir, 'fsh-generated', 'resources');
};

export const getExamplesFolder = () => {
    return path.join(workingDir, 'examples');
};

export const readSushiConfig = () => {
    try {
        const doc = yaml.load(fs.readFileSync(sushiConfigPath, 'utf8'));
        return doc;
    } catch (e) {
        console.log(e);
    }
};

export const readValidationResults = (filePath) => {
    try {
        const doc = JSON.parse(fs.readFileSync(filePath, 'utf8'));
        return doc;
    } catch (e) {
        console.log(e);
    }
};

export const getDependencies = (sushiConfig) => {
    if (sushiConfig?.dependencies) {
        const igs = Object.entries(sushiConfig.dependencies);
        const igParamArray = igs.map((kv) => `-ig ${kv[0]}#${kv[1].version}`);
        return igParamArray.join(' ');
    } else {
        return ''
    }
};

export const extractErrorSummary = async (resource) => {
    const expr = jsonata(`(
  resourceType='Bundle' ?
  entry.resource.issue[severity in ['fatal','error','warning']]{
    severity: $count($)
  }
  :
  issue[severity in ['fatal','error','warning']]{
    severity: $count($)
  }
)`)
   return await expr.evaluate(resource)
}