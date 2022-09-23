module "s-ept-23-redirect-updates-bceid-prod-8101" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "s-ept-23-redirect-updates-bceid-prod-8101"
  client_name                         = "SEpt 23 - redirect updates bceid prodv2"
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
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "http://localhost:5000/*",
    "https://bcgov.github.io/keycloak-example-apps/*",
    "https://www.test.ca/devChanged2",
    "+"
  ]
  standard_flow_enabled    = true
  service_accounts_enabled = false
  valid_redirect_uris = [
    "http://localhost:5000/*",
    "https://bcgov.github.io/keycloak-example-apps/*",
    "https://www.test.ca/devChanged2"
  ]
}
