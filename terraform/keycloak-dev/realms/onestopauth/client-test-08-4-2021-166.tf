module "client_test-08-4-2021-166" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-08-4-2021-166"
  valid_redirect_uris = [
    "http://fdgd.com",
    "http://fdgd.com"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
