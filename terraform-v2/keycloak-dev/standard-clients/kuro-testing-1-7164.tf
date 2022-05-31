module "kuro-testing-1-7164" {
  source    = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id  = var.standard_realm_id
  client_id = "kuro-testing-1-7164"
  valid_redirect_uris = [
    "http://devchange.com"
  ]
  idps = [
    "idir",
    "azureidir",
    "bceidbasic",
    "bceidbusiness",
    "bceidboth"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://devchange.com",
    "+"
  ]
}
