module "client_idir-test-dev-3565" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "idir-test-dev-3565"
  valid_redirect_uris = [
    "https://www.test.ca/dev"
  ]
  description                 = "CSS App Created"
  browser_authentication_flow = "null"
  access_type                 = "PUBLIC"
  pkce_code_challenge_method  = "S256"
  web_origins = [
    "+"
  ]
}
