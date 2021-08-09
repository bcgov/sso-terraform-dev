module "client_test-4-08-09-2021-335" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-4-08-09-2021-335"
  valid_redirect_uris = [
    "http://test123"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
