module "tians-test-2nd-gold-7196" {
  source    = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id  = var.standard_realm_id
  client_id = "tians-test-2nd-gold-7196"
  valid_redirect_uris = [
    "https://exampleddd1",
    "https://exampleddd2"
  ]
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
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
    "https://exampleddd1",
    "https://exampleddd2",
    "+"
  ]
}
