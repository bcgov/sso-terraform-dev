module "client_mytestclient-22-562" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "mytestclient-22-562"
  valid_redirect_uris = [
    "http://localhost:3000"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
