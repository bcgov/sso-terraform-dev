module "client_beforerelease-472" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "beforerelease-472"
  valid_redirect_uris = [
    "http://localhSSdddd"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
