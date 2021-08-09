module "client_test-3-08-09-2021-334" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-3-08-09-2021-334"
  valid_redirect_uris = [
    "http://test3A"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
