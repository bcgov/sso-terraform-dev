module "non-siteminder-conf-june-2023-8765" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "non-siteminder-conf-june-2023-8765"
  client_name                         = "non siteminder conf June 2023"
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "azureidir",
    "githubpublic",
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
    "http://localhost:3500/*",
    "https://bcgov.github.io/keycloak-example-apps/*",
    "https://sso-keycloak-e4ca1d-test.apps.gold.devops.gov.bc.ca/auth/realms/test-realm-multiple-nonsiteminder/*",
    "https://sso-keycloak-e4ca1d-test.apps.gold.devops.gov.bc.ca/auth/realms/test-realm/*"
  ]
}
