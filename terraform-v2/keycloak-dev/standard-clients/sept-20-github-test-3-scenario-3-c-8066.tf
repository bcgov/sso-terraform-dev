data "keycloak_authentication_flow" "sept_20_github_test_3_scenario_3_c_8066_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "sept-20-github-test-3-scenario-3-c-8066" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "sept-20-github-test-3-scenario-3-c-8066"
  client_name                         = "Sept 20 Github Test  3 Scenario 3c"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.sept_20_github_test_3_scenario_3_c_8066_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "http://localhost:6000",
    "https://bcgov.github.io/keycloak-example-apps/*",
    "+"
  ]
  standard_flow_enabled    = true
  service_accounts_enabled = false
  valid_redirect_uris = [
    "http://localhost:6000",
    "https://bcgov.github.io/keycloak-example-apps/*"
  ]
}
