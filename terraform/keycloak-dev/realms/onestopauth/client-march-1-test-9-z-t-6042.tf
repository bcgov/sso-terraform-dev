module "client_march-1-test-9-z-t-6042" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "march-1-test-9-z-t-6042"
  valid_redirect_uris = [
    "http://www.test.ca"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://www.test.ca",
    "+"
  ]
}
