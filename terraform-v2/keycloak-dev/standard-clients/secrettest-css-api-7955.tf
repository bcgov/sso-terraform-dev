data "keycloak_authentication_flow" "secrettest_css_api_7955_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "secrettest-css-api-7955" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "secrettest-css-api-7955"
  client_name                         = "Secrettest CSS API"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.secrettest_css_api_7955_browserflow.id
  standard_flow_enabled        = true
  service_accounts_enabled     = true
  valid_redirect_uris = [
    "https://secretcssapidev.com"
  ]
}
