data "keycloak_authentication_flow" "sept_16_idir_only_1_a_8054_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "sept-16-idir-only-1-a-8054" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "sept-16-idir-only-1-a-8054"
  client_name                         = "Sept 16 IDIR Only -1a"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.sept_16_idir_only_1_a_8054_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "http://localhost/*",
    "https://bcgov.github.io/keycloak-example-apps/*",
    "+"
  ]
  standard_flow_enabled    = true
  service_accounts_enabled = false
  valid_redirect_uris = [
    "http://localhost/*",
    "https://bcgov.github.io/keycloak-example-apps/*"
  ]
}
