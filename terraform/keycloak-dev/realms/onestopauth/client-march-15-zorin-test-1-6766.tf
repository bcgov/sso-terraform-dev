module "client_march-15-zorin-test-1-6766" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "march-15-zorin-test-1-6766"
  valid_redirect_uris = [
    "https://www.test.ca/devChanged"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://www.test.ca/devChanged",
    "+"
  ]
}
