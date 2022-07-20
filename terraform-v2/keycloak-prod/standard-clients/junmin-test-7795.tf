data "keycloak_authentication_flow" "junmin_test_7795_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "junmin-test-7795" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=undefined/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "junmin-test-7795"
  client_name                         = "junmin-test"
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "idir",
    "azureidir",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.junmin_test_7795_browserflow.id
  standard_flow_enabled        = true
  service_accounts_enabled     = false
  valid_redirect_uris = [
    "http://localhost:3000"
  ]
}
