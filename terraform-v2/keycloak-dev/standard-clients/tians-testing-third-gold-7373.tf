data "keycloak_authentication_flow" "tians_testing_third_gold_7373_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "tians-testing-third-gold-7373" {
  source    = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id  = var.standard_realm_id
  client_id = "tians-testing-third-gold-7373"
  valid_redirect_uris = [
    "https://exampleddd"
  ]
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "bceidbasic",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.tians_testing_third_gold_7373_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "https://exampleddd",
    "+"
  ]
}
