data "keycloak_authentication_flow" "b_ce_id_prod_email_test_team_aug_17_7933_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "b-ce-id-prod-email-test-team-aug-17-7933" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "b-ce-id-prod-email-test-team-aug-17-7933"
  client_name                         = "BCeID PROD  email test team Aug 17"
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "bceidboth",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.b_ce_id_prod_email_test_team_aug_17_7933_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "https://bcgov.github.io/keycloak-example-apps/*",
    "https://www.test.ca/devChanged2",
    "+"
  ]
  standard_flow_enabled    = true
  service_accounts_enabled = false
  valid_redirect_uris = [
    "https://bcgov.github.io/keycloak-example-apps/*",
    "https://www.test.ca/devChanged2"
  ]
}
