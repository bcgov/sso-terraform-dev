module "client_aet-2-1982" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "aet-2-1982"
  valid_redirect_uris = [
    "http://localhost:3000",
    "http://localhost:3000/*"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
