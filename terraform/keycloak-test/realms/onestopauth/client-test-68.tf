module "client_test-68" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-68"
  valid_redirect_uris = [
    "http://test"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
