data "keycloak_authentication_flow" "idp_test_2_aug_15_67_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "idp-test-2-aug-15-67" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "idp-test-2-aug-15-67"
  client_name                         = "idp_test2_Aug_15"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_test_2_aug_15_67_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "http://test.com",
    "+"
  ]
  standard_flow_enabled    = true
  service_accounts_enabled = false
  valid_redirect_uris = [
    "http://test.com"
  ]
}
