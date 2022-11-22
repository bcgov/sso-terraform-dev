module "client_junminlocaltest-6667" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_id   = "junminlocaltest-6667"
  client_name = "junminlocaltest-6667"
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
