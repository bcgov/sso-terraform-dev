module "client_testprojectjunmin-22221111-1059" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "testprojectjunmin-22221111-1059"
  valid_redirect_uris = [
    "http://localhost:1000"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
