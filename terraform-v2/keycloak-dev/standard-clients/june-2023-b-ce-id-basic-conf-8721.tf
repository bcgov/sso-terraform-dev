module "june-2023-b-ce-id-basic-conf-8721" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "june-2023-b-ce-id-basic-conf-8721"
  client_name                         = "June 2023 BCeID Basic Conf"
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "bceidbasic",
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
    "http://localhost:3000/*",
    "https://bcgov.github.io/keycloak-example-apps/*",
    "https://sso-keycloak-e4ca1d-dev.apps.gold.devops.gov.bc.ca/auth/realms/test-realm/*"
  ]
}
