module "client_bceid-test-feb-1-3-4887" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "bceid-test-feb-1-3-4887"
  valid_redirect_uris = [
    "https://www.test.ca"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://www.test.ca",
    "+"
  ]
}
