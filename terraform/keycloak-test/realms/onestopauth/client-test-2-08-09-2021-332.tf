module "client_test-2-08-09-2021-332" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-2-08-09-2021-332"
  valid_redirect_uris = [
    "http://test.com "
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
