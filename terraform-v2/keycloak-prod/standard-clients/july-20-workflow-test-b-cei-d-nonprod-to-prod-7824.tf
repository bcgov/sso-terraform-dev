data "keycloak_authentication_flow" "july_20_workflow_test_b_cei_d_nonprod_to_prod_7824_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "july-20-workflow-test-b-cei-d-nonprod-to-prod-7824" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=undefined/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "july-20-workflow-test-b-cei-d-nonprod-to-prod-7824"
  client_name                         = "July 20 - Workflow Test BCeiD nonprod to prod"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.july_20_workflow_test_b_cei_d_nonprod_to_prod_7824_browserflow.id
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
