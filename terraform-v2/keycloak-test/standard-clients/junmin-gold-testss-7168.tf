data "keycloak_authentication_flow" "junmin_gold_testss_7168_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "junmin-gold-testss-7168" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "junmin-gold-testss-7168"
  client_name                         = ""
  access_token_lifespan               = 518400
  client_session_idle_timeout         = 25200
  client_session_max_lifespan         = 480
  client_offline_session_idle_timeout = 777600
  client_offline_session_max_lifespan = 36000
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
    "http://localhost:3000",
    "+"
  ]
  standard_flow_enabled    = true
  service_accounts_enabled = false
  valid_redirect_uris = [
    "http://localhost:3000"
  ]
}
