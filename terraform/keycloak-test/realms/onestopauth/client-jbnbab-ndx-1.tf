module "client_jbnbab-ndx-1" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "jbnbab-ndx-1"
  valid_redirect_uris = [
    "http://localhost/"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
