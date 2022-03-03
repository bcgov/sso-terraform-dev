module "client_kuro-mar-03-b-ce-id-business-test-6238" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "kuro-mar-03-b-ce-id-business-test-6238"
  valid_redirect_uris = [
    "https://bceidTest.com"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://bceidTest.com",
    "+"
  ]
}
