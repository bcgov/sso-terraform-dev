module "azure-idir-conf-july-2023-8776" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "azure-idir-conf-july-2023-8776"
  client_name                         = "Azure IDIR Conf July 2023"
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
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
    "https://sso-keycloak-e4ca1d-test.apps.gold.devops.gov.bc.ca/auth/realms/test-realm-single-nonsiteminder-2/*",
    "https://sso-keycloak-e4ca1d-test.apps.gold.devops.gov.bc.ca/auth/realms/test-realm-single-nonsiteminder/*"
  ]
}
