module "client_junmin-client-test-111" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "junmin-client-test-111"
  valid_redirect_uris = [
    "http://localhost:3003"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
