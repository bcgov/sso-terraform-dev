data "keycloak_authentication_flow" "april_6_testing_teams_2_7204_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "april-6-testing-teams-2-7204" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id    = var.standard_realm_id
  client_id   = "april-6-testing-teams-2-7204"
  client_name = ""
  valid_redirect_uris = [
    "localhost://dev"
  ]
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
  browser_authentication_flow  = data.keycloak_authentication_flow.april_6_testing_teams_2_7204_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "localhost://dev",
    "+"
  ]
}
