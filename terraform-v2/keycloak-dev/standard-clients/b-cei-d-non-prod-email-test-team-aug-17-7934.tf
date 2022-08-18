data "keycloak_authentication_flow" "b_cei_d_non_prod_email_test_team_aug_17_7934_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "b-cei-d-non-prod-email-test-team-aug-17-7934" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "b-cei-d-non-prod-email-test-team-aug-17-7934"
  client_name                         = "BCeiD Non Prod email test team aug 17"
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "bceidbasic",
    "bceidbusiness",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.b_cei_d_non_prod_email_test_team_aug_17_7934_browserflow.id
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
