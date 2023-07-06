module "confidential-client-june-23-7700" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "confidential-client-june-23-7700"
  client_name                         = "confidential client June 23"
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
  additional_role_attribute    = ""
  login_theme                  = ""
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
  standard_flow_enabled        = true
  service_accounts_enabled     = false
  valid_redirect_uris = [
    "http://localhost:3000/*",
    "https://bcgov.github.io/keycloak-example-apps/*",
    "https://sso-keycloak-e4ca1d-prod.apps.gold.devops.gov.bc.ca/auth/realms/test-realm-2/*",
    "https://sso-keycloak-e4ca1d-prod.apps.gold.devops.gov.bc.ca/auth/realms/test-realm/*"
  ]
}
