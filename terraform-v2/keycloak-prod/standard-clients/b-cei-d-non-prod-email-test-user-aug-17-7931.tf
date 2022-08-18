data "keycloak_authentication_flow" "b_cei_d_non_prod_email_test_user_aug_17_7931_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "b-cei-d-non-prod-email-test-user-aug-17-7931" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "b-cei-d-non-prod-email-test-user-aug-17-7931"
  client_name                         = "BCeiD Non Prod email test user aug 17"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.b_cei_d_non_prod_email_test_user_aug_17_7931_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "https://bcgov.github.io/keycloak-example-apps/*",
    "+"
  ]
  standard_flow_enabled    = true
  service_accounts_enabled = false
  valid_redirect_uris = [
    "https://bcgov.github.io/keycloak-example-apps/*"
  ]
}
