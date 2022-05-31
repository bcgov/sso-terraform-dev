data "keycloak_authentication_flow" "tian_first_gold_7361_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "tian-first-gold-7361" {
  source    = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id  = var.standard_realm_id
  client_id = "tian-first-gold-7361"
  valid_redirect_uris = [
    "http://prod1.com"
  ]
  access_token_lifespan               = ""
  client_session_idle_timeout         = 360
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = 180
  client_offline_session_max_lifespan = ""
  idps = [
    "idir",
    "azureidir",
    "bceidbasic",
    "bceidbusiness",
    "bceidboth",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.tian_first_gold_7361_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "http://prod1.com",
    "+"
  ]
}
