data "keycloak_authentication_flow" "tians_testing_8_17_b_ce_id_add_both_7928_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "tians-testing-8-17-b-ce-id-add-both-7928" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "tians-testing-8-17-b-ce-id-add-both-7928"
  client_name                         = "Tian's Testing - 8/17 BCeID add both"
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
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.tians_testing_8_17_b_ce_id_add_both_7928_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "https://example",
    "+"
  ]
  standard_flow_enabled    = true
  service_accounts_enabled = false
  valid_redirect_uris = [
    "https://example"
  ]
}
