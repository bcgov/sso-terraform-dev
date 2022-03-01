module "client_feb-28-pm-test-1-idir-5908" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "feb-28-pm-test-1-idir-5908"
  valid_redirect_uris = [
    "https://www.test.ca/test"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://www.test.ca/test",
    "+"
  ]
}
