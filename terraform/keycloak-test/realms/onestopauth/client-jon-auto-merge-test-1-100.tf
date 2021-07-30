module "client_jon-auto-merge-test-1-100" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "jon-auto-merge-test-1-100"
  valid_redirect_uris = [
    "http://b"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
