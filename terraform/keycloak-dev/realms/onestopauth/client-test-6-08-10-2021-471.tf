module "client_test-6-08-10-2021-471" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-6-08-10-2021-471"
  valid_redirect_uris = [
    "http://ds"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
