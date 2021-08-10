module "client_aug-10-draft-468" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "aug-10-draft-468"
  valid_redirect_uris = [
    "https://www.google.ca"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
