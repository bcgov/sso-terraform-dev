module "client_jon-test-10-463" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "jon-test-10-463"
  valid_redirect_uris = [
    "https://c"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
