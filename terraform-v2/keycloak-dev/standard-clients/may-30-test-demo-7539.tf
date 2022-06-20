data "keycloak_authentication_flow" "may_30_test_demo_7539_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "may-30-test-demo-7539" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id    = var.standard_realm_id
  client_id   = "may-30-test-demo-7539"
  client_name = "May 30 Test Demo"
  valid_redirect_uris = [
    "http://localhost:10004"
  ]
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "bceidbusiness",
    "bceidbasic",
    "bceidboth",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.may_30_test_demo_7539_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "http://localhost:10004",
    "+"
  ]
}
