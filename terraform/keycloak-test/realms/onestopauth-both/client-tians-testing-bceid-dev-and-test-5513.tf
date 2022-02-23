module "client_tians-testing-bceid-dev-and-test-5513" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "tians-testing-bceid-dev-and-test-5513"
  valid_redirect_uris = [
    "https://exampleddd"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://exampleddd",
    "+"
  ]
}
