data "keycloak_authentication_flow" "june_23_test_edit_non_prod_to_prod_7698_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "june-23-test-edit-non-prod-to-prod-7698" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id    = var.standard_realm_id
  client_id   = "june-23-test-edit-non-prod-to-prod-7698"
  client_name = "June 23: Test Edit Non Prod To Prod"
  valid_redirect_uris = [
    "https://bcgov.github.io/keycloak-example-apps/*"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.june_23_test_edit_non_prod_to_prod_7698_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "https://bcgov.github.io/keycloak-example-apps/*",
    "+"
  ]
}
