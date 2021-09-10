module "client_cypress-test-1685" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "cypress-test-1685"
  valid_redirect_uris = [
    "http://cypress"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
