module "tians-testing-third-gold-7327" {
  source    = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id  = var.standard_realm_id
  client_id = "tians-testing-third-gold-7327"
  valid_redirect_uris = [
    "https://exampleddd"
  ]
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "idir",
    "azureidir",
    "bceidbasic",
    "bceidbusiness",
    "bceidboth",
    "common"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://exampleddd",
    "+"
  ]
}
