module "client_aug-17-test-email-596" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "aug-17-test-email-596"
  valid_redirect_uris = [
    "http://www.google.ca"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
