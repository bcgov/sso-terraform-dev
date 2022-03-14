module "client_tians-testing-non-prod-b-ce-id-6734" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "tians-testing-non-prod-b-ce-id-6734"
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
