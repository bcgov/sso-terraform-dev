const child_process = require('child_process');
const fs = require('fs');
const path = require('path');
const shell = require('shelljs');
const _ = require('lodash');
const { TerraformGenerator } = require('terraform-generator');

const mock = new TerraformGenerator();

const keycloakRealm = mock.data('keycloak_realm', 'this', {});

module.exports = ({ projectName, realm, validRedirectUrls, environments }) => {

  const SEPARATOR = '\n';

  const paths = _.map(environments, (env) => {
    const outputDir = path.join(`terraform/keycloak-${env}/realms/${realm}`);
    const tfFile = `client-${projectName}.tf`;
    const target = path.join(outputDir, tfFile);

    const tfg = new TerraformGenerator();

    tfg.module(`client_${projectName}`, {
      source: '../../../modules/openid-client',
      realm_id: keycloakRealm.attr('id'),
      client_name: projectName,
      valid_redirect_uris: validRedirectUrls[env] || validRedirectUrls,
    });

    const result = tfg.generate();

    const formatted =
      result.tf
        .split(SEPARATOR)
        .filter((v) => v.length > 0)
        .join(SEPARATOR) + SEPARATOR;

    shell.mkdir('-p', outputDir);
    fs.writeFileSync(target, formatted);

    child_process.execSync('terraform fmt', { cwd: outputDir });

    return target;
  });

  return { paths };
};
