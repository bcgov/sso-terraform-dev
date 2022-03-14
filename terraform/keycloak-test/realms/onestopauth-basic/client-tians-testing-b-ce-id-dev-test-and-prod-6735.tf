module "client_tians-testing-b-ce-id-dev-test-and-prod-6735" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "tians-testing-b-ce-id-dev-test-and-prod-6735"
  valid_redirect_uris = [
    "https://exampletest"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://exampletest",
    "+"
  ]
}
