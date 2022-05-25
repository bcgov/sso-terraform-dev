data "keycloak_authentication_flow" "kuro_testing_13_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "kuro-testing-13" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id    = var.standard_realm_id
  client_id   = "kuro-testing-13"
  client_name = "kuro_testing"
  valid_redirect_uris = [
    "http://devchange.com"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.kuro_testing_13_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "http://devchange.com",
    "+"
  ]
}
