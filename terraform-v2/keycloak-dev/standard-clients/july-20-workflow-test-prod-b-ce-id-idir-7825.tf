data "keycloak_authentication_flow" "july_20_workflow_test_prod_b_ce_id_idir_7825_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "july-20-workflow-test-prod-b-ce-id-idir-7825" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "july-20-workflow-test-prod-b-ce-id-idir-7825"
  client_name                         = "July 20 - Workflow Test BCeID & IDIR"
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "idir",
    "bceidbasic",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.july_20_workflow_test_prod_b_ce_id_idir_7825_browserflow.id
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
