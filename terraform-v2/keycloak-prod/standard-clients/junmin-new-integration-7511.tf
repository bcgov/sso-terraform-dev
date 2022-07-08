data "keycloak_authentication_flow" "junmin_new_integration_7511_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "junmin-new-integration-7511" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id    = var.standard_realm_id
  client_id   = "junmin-new-integration-7511"
  client_name = "Junmin new Integration"
  valid_redirect_uris = [
    "http://localhost:8080"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.junmin_new_integration_7511_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "http://localhost:8080",
    "+"
  ]
  standard_flow_enabled    = true
  service_accounts_enabled = false
}
