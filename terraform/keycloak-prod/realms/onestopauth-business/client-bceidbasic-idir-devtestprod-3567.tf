module "client_bceidbasic-idir-devtestprod-3567" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "bceidbasic-idir-devtestprod-3567"
  valid_redirect_uris = [
    "https:///www.test.ca/prod"
  ]
  description = "CSS App Created"
}
