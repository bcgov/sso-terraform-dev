module "client_testprojectjunmin-2222-eeee-430" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "testprojectjunmin-2222-eeee-430"
  valid_redirect_uris = [
    "http://localhost:1001"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
