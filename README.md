## sso-terraform-dev

### This repository is used as a `development` environment of `sso-requests` project.

- see https://github.com/bcgov/sso_terraform
- see https://github.com/bcgov/sso-requests

### The following folders/files must be moved into `sso_terraform` once developed.

- `.github/workflows/request.yml`
- `.github/workflows/terraform.yml`
- `scripts/generate-clients.js`
- `scripts/github0script.js`
- `terraform/modules/openid-client`

* It remains as a technical debt to avoid duplications in two separate repositories (environments).
