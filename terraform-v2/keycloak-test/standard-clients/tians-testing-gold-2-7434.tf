data "keycloak_authentication_flow" "tians_testing_gold_2_7434_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "tians-testing-gold-2-7434" {
  source    = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id  = var.standard_realm_id
  client_id = "tians-testing-gold-2-7434"
  valid_redirect_uris = [
    "https://exampleTest"
  ]
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "bceidbasic",
    "bceidbusiness",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.tians_testing_gold_2_7434_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "https://exampleTest",
    "+"
  ]
}
