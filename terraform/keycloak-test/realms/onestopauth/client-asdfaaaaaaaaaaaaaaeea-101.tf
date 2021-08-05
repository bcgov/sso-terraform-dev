module "client_asdfaaaaaaaaaaaaaaeea-101" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "asdfaaaaaaaaaaaaaaeea-101"
  valid_redirect_uris = [
    "http://localhost:1000"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
