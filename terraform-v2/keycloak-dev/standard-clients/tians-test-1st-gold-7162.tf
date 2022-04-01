module "tians-test-1st-gold-7162" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = var.standard_realm_id
  client_name = "tians-test-1st-gold-7162"
  valid_redirect_uris = [
    "https://exampleddd"
  ]
  idps = [
    "idir",
    "azureidir",
    "bceidbusiness",
    "bceidboth"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://exampleddd",
    "+"
  ]
}
