module "client_jaffer-first-test-new-6965" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "jaffer-first-test-new-6965"
  valid_redirect_uris = [
    "https://local:8000"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://local:8000",
    "+"
  ]
}
