module "client_zorin-test-teams-jan-17-2-4292" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "zorin-test-teams-jan-17-2-4292"
  valid_redirect_uris = [
    "https://www.test.ca/dev"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
