## sso-terraform-dev

# **THIS PROJECT IS ARCHIVED IN FAVOUR OF BRANCH BASED DEPLOYMENT OF https://github.com/bcgov/sso_terraform**

![Lifecycle:Retired](https://img.shields.io/badge/Lifecycle-Retired-d45500)

### This repository is used as a `development` environment of `sso-requests` project.

- see https://github.com/bcgov/sso_terraform
- see https://github.com/bcgov/sso-requests

## Debugging

If the terraform plan and apply actions are failing do to a failure to release the state lock.  This can be unlocked by doing the following:

 - Log into the AWS dev environment in a local terminal.
 - In the folder `./terraform-v2` run `terraform init` and `terraform plan`.
 - If that errors out with a state issue reset the state using, `terraform force-unlock <<ID>>`. The GitHub actions should run smoothly again.
