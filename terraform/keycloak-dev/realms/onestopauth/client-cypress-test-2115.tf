module "client_cypress-test-2115" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "cypress-test-2115"
  valid_redirect_uris = [
    "https://cypress",
    "https://cypress-2"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
