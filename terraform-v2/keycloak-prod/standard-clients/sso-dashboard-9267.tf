module "sso-dashboard-9267" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "sso-dashboard-9267"
  client_name                         = "SSO Dashboard"
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
  additional_role_attribute    = ""
  login_theme                  = ""
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
  standard_flow_enabled        = true
  service_accounts_enabled     = false
  valid_redirect_uris = [
    "http://sso-grafana-sandbox.apps.gold.devops.gov.bc.ca/*",
    "https://d7kjcupxp1.execute-api.ca-central-1.amazonaws.com/*",
    "https://sso-grafana-sandbox.apps.gold.devops.gov.bc.ca/*"
  ]
}
