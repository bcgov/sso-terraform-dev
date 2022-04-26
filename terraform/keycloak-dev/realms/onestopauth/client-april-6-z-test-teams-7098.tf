module "client_april-6-z-test-teams-7098" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "april-6-z-test-teams-7098"
  valid_redirect_uris = [
    "https:///www.test.ca/devChange23"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https:///www.test.ca/devChange23",
    "+"
  ]
}
