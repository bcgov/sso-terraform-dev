const axios = require('axios');

module.exports = async ({ github, context }) => {
  const { payload } = context;
  const { inputs, repository } = payload;
  const owner = repository.owner.login;
  const repo = repository.name;

  console.log(JSON.stringify(context, null, 2))
};
