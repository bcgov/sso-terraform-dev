data "keycloak_authentication_flow" "augh_8_lada_and_zorin_7886_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "augh-8-lada-and-zorin-7886" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "augh-8-lada-and-zorin-7886"
  client_name                         = "Augh 8 Lada and Zorin"
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "idir",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.augh_8_lada_and_zorin_7886_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "https:///www.test.ca/devChange2",
    "+"
  ]
  standard_flow_enabled    = true
  service_accounts_enabled = false
  valid_redirect_uris = [
    "https:///www.test.ca/devChange2"
  ]
}
