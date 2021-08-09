module "client_testprojectjunmin-2222-bbzz-40" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "testprojectjunmin-2222-bbzz-40"
  valid_redirect_uris = [
    "http://localhost:10001111"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
