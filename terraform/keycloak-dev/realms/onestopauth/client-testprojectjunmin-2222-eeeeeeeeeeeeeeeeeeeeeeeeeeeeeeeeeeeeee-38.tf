module "client_testprojectjunmin-2222-eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-38" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "testprojectjunmin-2222-eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee-38"
  valid_redirect_uris = [
    "http://localhost"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
