data "keycloak_authentication_flow" "junmin_gold_testss_7168_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "junmin-gold-testss-7168" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "junmin-gold-testss-7168"
  client_name                         = ""
  access_token_lifespan               = 120
  client_session_idle_timeout         = 7200
  client_session_max_lifespan         = 259200
  client_offline_session_idle_timeout = 345600
  client_offline_session_max_lifespan = 18000
  idps = [
    "idir",
    "azureidir",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.junmin_gold_testss_7168_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "http://localhost:3003",
    "+"
  ]
  standard_flow_enabled    = true
  service_accounts_enabled = false
  valid_redirect_uris = [
    "http://localhost:3003"
  ]
}
