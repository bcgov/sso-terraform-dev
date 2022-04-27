data "keycloak_authentication_flow" "tians_testing_7371_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "tians-testing-7371" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = var.standard_realm_id
  client_name = "tians-testing-7371"
  valid_redirect_uris = [
    "https://exampleProd"
  ]
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "bceidbasic",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.tians_testing_7371_browserflow.id
}
