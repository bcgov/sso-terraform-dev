module "client_august-17th-4-pm-599" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "august-17th-4-pm-599"
  valid_redirect_uris = [
    "http://www.google.ca"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
