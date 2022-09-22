data "keycloak_authentication_flow" "githun_dev_test_prod_no_team_and_prod_approve_8096_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "githun-dev-test-prod-no-team-and-prod-approve-8096" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "githun-dev-test-prod-no-team-and-prod-approve-8096"
  client_name                         = "Githun dev/test/prod- no team and prod approve"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.githun_dev_test_prod_no_team_and_prod_approve_8096_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "https://githubdev.com",
    "+"
  ]
  standard_flow_enabled    = true
  service_accounts_enabled = false
  valid_redirect_uris = [
    "https://githubdev.com"
  ]
}
