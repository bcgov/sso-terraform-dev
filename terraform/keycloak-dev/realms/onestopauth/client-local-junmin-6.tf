module "client_local-junmin-6" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "local-junmin-6"
  valid_redirect_uris = [
    "http://localhost:3333"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://localhost:3333",
    "+"
  ]
}
