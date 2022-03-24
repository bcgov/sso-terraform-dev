module "client_jaffer-first-test-mar-24-mor-1-6998" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "jaffer-first-test-mar-24-mor-1-6998"
  valid_redirect_uris = [
    "http://localhost:8000"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://localhost:8000",
    "+"
  ]
}
