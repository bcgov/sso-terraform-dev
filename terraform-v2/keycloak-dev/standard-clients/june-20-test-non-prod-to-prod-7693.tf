data "keycloak_authentication_flow" "june_20_test_non_prod_to_prod_7693_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "june-20-test-non-prod-to-prod-7693" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id    = var.standard_realm_id
  client_id   = "june-20-test-non-prod-to-prod-7693"
  client_name = "June 20: Test Non Prod to Prod"
  valid_redirect_uris = [
    "http://localhost:3000/*",
    "https:///www.test.ca/devChange2"
  ]
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "idir",
    "bceidbasic",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.june_20_test_non_prod_to_prod_7693_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "http://localhost:3000/*",
    "https:///www.test.ca/devChange2",
    "+"
  ]
}
