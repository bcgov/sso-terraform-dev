data "keycloak_authentication_flow" "tians_testing_b_ce_id_idir_with_prod_7809_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "tians-testing-b-ce-id-idir-with-prod-7809" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=undefined/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "tians-testing-b-ce-id-idir-with-prod-7809"
  client_name                         = "Tian's Testing - BCeID + IDIR with Prod"
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "idir",
    "bceidbasic",
    "bceidbusiness",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.tians_testing_b_ce_id_idir_with_prod_7809_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "https://exampleTest",
    "+"
  ]
  standard_flow_enabled    = true
  service_accounts_enabled = false
  valid_redirect_uris = [
    "https://exampleTest"
  ]
}
