module "client_jaffer-first-test-mar-24-aft-12-7030" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "jaffer-first-test-mar-24-aft-12-7030"
  valid_redirect_uris = [
    "https://localhost:8000"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://localhost:8000",
    "+"
  ]
}
