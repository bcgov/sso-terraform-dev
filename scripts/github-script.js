const fs = require('fs');
const _ = require('lodash');
const generateClients = require('./generate-clients');
const axios = require('axios');
const API_URL = 'https://gcp9dahm4c.execute-api.ca-central-1.amazonaws.com/test/actions?status=create';
const axiosConfig = { headers: { Authorization: process.env.GH_SECRET } };

// This module runs in GitHub Action `github-script`
// see https://github.com/actions/github-script#run-a-separate-file-with-an-async-function
module.exports = async ({ github, context }) => {
  const { payload } = context;
  const { inputs, repository } = payload;
  const owner = repository.owner.login;
  const repo = repository.name;
  let { projectName, realm, validRedirectUrls, environments, id } = inputs;

  try {

    console.log(projectName, validRedirectUrls, realm, environments, id);

    projectName = _.kebabCase(projectName);
    validRedirectUrls = JSON.parse(validRedirectUrls);
    environments = JSON.parse(environments);

    const info = generateClients({
      projectName,
      realm,
      validRedirectUrls,
      environments,
    });

    if (!info) throw Error('failed in client creation');

    const { paths } = info;

    const mainRef = await github.git
      .getRef({
        owner,
        repo,
        ref: `heads/${repository.default_branch}`,
      })
      .then(
        (res) => res.data,
        (err) => null
      );

    if (!mainRef) {
      console.error('no main branch');
    }

    const prBranchName = `request/${projectName}`;

    let prRef = await github.git
      .getRef({
        owner,
        repo,
        ref: `heads/${prBranchName}`,
      })
      .then(
        (res) => res.data,
        (err) => null
      );

    if (!prRef) {
      await github.git.createRef({
        owner,
        repo,
        ref: `refs/heads/${prBranchName}`,
        sha: mainRef.object.sha,
      });
    }

    for (let x = 0; x < paths.length; x++) {
      await github.repos.createOrUpdateFileContents({
        owner,
        repo,
        sha: await getSHA({
          ref: prBranchName,
          path: paths[x],
        }),
        branch: prBranchName,
        path: paths[x],
        message: `feat: add a client file for ${projectName}`,
        content: fs.readFileSync(paths[x], { encoding: 'base64' }),
      });
    }

    let pr = await github.pulls.create({
      owner,
      repo,
      base: repository.default_branch,
      head: prBranchName,
      title: `request: add client files for ${projectName}`,
      body: `
  #### Project Name: \`${_.startCase(projectName)}\`
  #### Target Realm: \`${realm}\`
  #### Environments: \`${environments.join(', ')}\`
  ${environments.map(
    (env) => `<details><summary>Show Details for ${env}</summary>
  \`\`\`<ul>✔️Valid Redirect Urls${(validRedirectUrls[env] || validRedirectUrls || []).map(
    (url) => `<li>${url}</li>`
  )}</ul>\`\`\`
  </details>`
  )}`,
      maintainer_can_modify: false,
    });

    const {
      data: { number },
    } = pr;
    axios.put(API_URL, { prNumber: number, prSuccess: true, id }, axiosConfig);
    return pr;
  } catch (err) {
    console.log(err)
    axios.put(API_URL, { prNumber: null, prSuccess: false, id }, axiosConfig);
    throw err;
  }

  async function getSHA({ ref, path }) {
    const data = await github.repos
      .getContent({
        owner,
        repo,
        ref,
        path,
      })
      .then(
        (res) => res.data,
        (err) => null
      );

    return data && data.sha;
  }
};
