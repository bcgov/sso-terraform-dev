module "client_test-1-08-10-2021-397" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-1-08-10-2021-397"
  valid_redirect_uris = [
    "http://dev"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
