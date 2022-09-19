data "keycloak_authentication_flow" "nk_test_gh_prod_8062_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "nk-test-gh-prod-8062" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "nk-test-gh-prod-8062"
  client_name                         = "nk-test-gh-prod"
  access_token_lifespan               = 600
  client_session_idle_timeout         = 300
  client_session_max_lifespan         = 6000
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "idir",
    "github",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.nk_test_gh_prod_8062_browserflow.id
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
