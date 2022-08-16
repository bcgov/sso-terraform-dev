data "keycloak_authentication_flow" "junmin_7888_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "junmin-7888" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "junmin-7888"
  client_name                         = "JUNMIN"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.junmin_7888_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "http://localhost:3900",
    "+"
  ]
  standard_flow_enabled    = true
  service_accounts_enabled = false
  valid_redirect_uris = [
    "http://localhost:3900"
  ]
}
