data "keycloak_authentication_flow" "tian_1_testing_7674_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "tian-1-testing-7674" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id    = var.standard_realm_id
  client_id   = "tian-1-testing-7674"
  client_name = "Tian 1 Testing"
  valid_redirect_uris = [
    "https://exampleTest"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.tian_1_testing_7674_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "https://exampleTest",
    "+"
  ]
}
