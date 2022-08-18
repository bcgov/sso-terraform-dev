data "keycloak_authentication_flow" "css_api_service_account_7963_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "css-api-service-account-7963" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "css-api-service-account-7963"
  client_name                         = "CSS API - Service Account"
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.css_api_service_account_7963_browserflow.id
  standard_flow_enabled        = false
  service_accounts_enabled     = true
}
