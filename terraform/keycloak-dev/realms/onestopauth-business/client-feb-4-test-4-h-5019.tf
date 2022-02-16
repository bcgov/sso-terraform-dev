module "client_feb-4-test-4-h-5019" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "feb-4-test-4-h-5019"
  valid_redirect_uris = [
    "https:///www.test.ca/devChange",
    "https:///www.test.ca/devChange2"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https:///www.test.ca/devChange",
    "https:///www.test.ca/devChange2",
    "+"
  ]
}
