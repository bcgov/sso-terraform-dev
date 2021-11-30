module "client_bceidbasic-idir-dev-test-3566" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "bceidbasic-idir-dev-test-3566"
  valid_redirect_uris = [
    "https://www.test.ca/test"
  ]
  description                 = "CSS App Created"
  browser_authentication_flow = "null"
}
