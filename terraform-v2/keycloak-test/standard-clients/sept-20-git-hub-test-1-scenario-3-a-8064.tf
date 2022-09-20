data "keycloak_authentication_flow" "sept_20_git_hub_test_1_scenario_3_a_8064_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "sept-20-git-hub-test-1-scenario-3-a-8064" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "sept-20-git-hub-test-1-scenario-3-a-8064"
  client_name                         = "Sept 20 GitHub Test 1"
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "github",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.sept_20_git_hub_test_1_scenario_3_a_8064_browserflow.id
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
