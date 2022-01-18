module "client_zorin-test-jan-4-teams-take-2-4291" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "zorin-test-jan-4-teams-take-2-4291"
  valid_redirect_uris = [
    "https://www.test.ca/testCHANGED"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
