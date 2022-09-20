data "keycloak_authentication_flow" "email_gh_prod_nk_testing_8072_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "email-gh-prod-nk-testing-8072" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "email-gh-prod-nk-testing-8072"
  client_name                         = "email-gh-prod-nk-testing"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.email_gh_prod_nk_testing_8072_browserflow.id
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
