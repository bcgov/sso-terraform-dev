const axios = require('axios');

module.exports = async ({ github, context }, plan) => {
  const { payload } = context;
  const { inputs, repository } = payload;
  const owner = repository.owner.login;
  const repo = repository.name;

  console.log(process.env.PLAN);
  return null;
};
