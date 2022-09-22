data "keycloak_authentication_flow" "github_dev_test_prod_no_team_no_apporval_8094_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "github-dev-test-prod-no-team-no-apporval-8094" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "github-dev-test-prod-no-team-no-apporval-8094"
  client_name                         = "Github dev/test/prod - no team no apporval"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.github_dev_test_prod_no_team_no_apporval_8094_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "https://githubprod.com",
    "+"
  ]
  standard_flow_enabled    = true
  service_accounts_enabled = false
  valid_redirect_uris = [
    "https://githubprod.com"
  ]
}
