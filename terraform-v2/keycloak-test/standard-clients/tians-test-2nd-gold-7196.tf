module "tians-test-2nd-gold-7196" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = var.standard_realm_id
  client_name = "tians-test-2nd-gold-7196"
  valid_redirect_uris = [
    "https://exampleTest1"
  ]
  idps = [
    "idir",
    "bceidboth",
    "azureidir",
    "bceidbusiness",
    "bceidbasic",
    "common"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://exampleTest1",
    "+"
  ]
}
