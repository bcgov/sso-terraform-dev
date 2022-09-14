data "keycloak_authentication_flow" "idir_with_b_ce_id_8040_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "idir-with-b-ce-id-8040" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "idir-with-b-ce-id-8040"
  client_name                         = "IDIR with BCeID"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.idir_with_b_ce_id_8040_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "https://IDIRBCeIDprod.com",
    "+"
  ]
  standard_flow_enabled    = true
  service_accounts_enabled = false
  valid_redirect_uris = [
    "https://IDIRBCeIDprod.com"
  ]
}
