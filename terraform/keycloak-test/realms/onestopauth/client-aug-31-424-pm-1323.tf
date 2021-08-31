module "client_aug-31-424-pm-1323" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "aug-31-424-pm-1323"
  valid_redirect_uris = [
    "https://www.google.ca"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
