data "keycloak_authentication_flow" "b_ce_id_new_test_with_team_8063_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "b-ce-id-new-test-with-team-8063" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "b-ce-id-new-test-with-team-8063"
  client_name                         = "BCeID new test with team"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.b_ce_id_new_test_with_team_8063_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "https://bceidneprod.com",
    "+"
  ]
  standard_flow_enabled    = true
  service_accounts_enabled = false
  valid_redirect_uris = [
    "https://bceidneprod.com"
  ]
}
