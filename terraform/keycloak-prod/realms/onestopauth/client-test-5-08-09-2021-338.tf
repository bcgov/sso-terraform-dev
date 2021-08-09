module "client_test-5-08-09-2021-338" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-5-08-09-2021-338"
  valid_redirect_uris = [
    "http://dev"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
