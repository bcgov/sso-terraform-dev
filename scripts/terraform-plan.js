const axios = require('axios');

const realms = ['onestopauth', 'onestopauth-basic', 'onestopauth-both', 'onestopauth-business'];
const modules = ['keycloak_dev', 'keycloak_test', 'keycloak_prod'];

module.exports = async ({ github, context }) => {
  try {
    const {
      payload: { pull_request },
    } = context;
    const { changed_files: changedFiles, additions: prAdditions, deletions: prDeletions } = pull_request;
    const { PLAN, API_URL, PR_NUMBER, PLAN_OUTCOME, AUTHORIZATION } = process.env;

    const moduleMatchRegex = /# module.(.*?\n)/g;
    const resourceStrings = PLAN.match(moduleMatchRegex);
    const resources = [];

    resourceStrings.forEach((resource) => {
      const realm = realms.filter((realm) => resource.includes(`.${realm}.`));
      if (realm.length > 1) throw new Error('Matched multiple realms');

      const module = modules.filter((module) => resource.includes(`.${module}.`));
      if (module.length > 1) throw new Error('Matched multiple modules');

      const client = resource.match(/module.client_(.*?)(\.)/)[1];
      const action = resource.match(/will be (.*?)(\n)/)[1];

      const parsedResource = { module: module[0], client, realm: realm[0], action };
      resources.push(parsedResource);
    });
    const tfAdditions = PLAN.match(/Plan: (\d+) to add/)[1];
    const tfUpdates = PLAN.match(/add, (\d+) to change/)[1];
    const tfDeletions = PLAN.match(/change, (\d+) to destroy/)[1];
    const planDetails = {
      changedFiles,
      prAdditions,
      prDeletions,
      resources,
      tfAdditions,
      tfUpdates,
      tfDeletions,
    };
    const data = {
      prNumber: PR_NUMBER,
      planSuccess: PLAN_OUTCOME !== 'failure',
      planDetails,
    }
    console.log('sending data,', JSON.stringify(data))
    await axios.put(
      `${API_URL}?status=plan`,
      data,
      { headers: { Authorization: AUTHORIZATION } }
    );
    return result;
  } catch (error) {
    return { error };
  }
};
