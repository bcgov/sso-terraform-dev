module "client_testagain-111-4" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "testagain-111-4"
  valid_redirect_uris = [
    "http://localhost:3001"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://localhost:3001",
    "+"
  ]
}
