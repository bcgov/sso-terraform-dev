data "keycloak_authentication_flow" "demo_request_7672_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "demo-request-7672" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id    = var.standard_realm_id
  client_id   = "demo-request-7672"
  client_name = "demo-request"
  valid_redirect_uris = [
    "http://*/*"
  ]
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "idir",
    "bceidboth",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.demo_request_7672_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "http://*/*",
    "+"
  ]
}
