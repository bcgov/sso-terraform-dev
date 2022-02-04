module "client_feb-4-test-b-cei-d-dev-4986" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "feb-4-test-b-cei-d-dev-4986"
  valid_redirect_uris = [
    "https://www.dev.ca"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://www.dev.ca",
    "+"
  ]
}
