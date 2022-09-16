data "keycloak_authentication_flow" "tian_1_s_testing_no_team_8056_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "tian-1-s-testing-no-team-8056" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "tian-1-s-testing-no-team-8056"
  client_name                         = "Tian 1's Testing - no team"
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "idir",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.tian_1_s_testing_no_team_8056_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "https://example",
    "+"
  ]
  standard_flow_enabled    = true
  service_accounts_enabled = false
  valid_redirect_uris = [
    "https://example"
  ]
}
