data "keycloak_authentication_flow" "sept_16_idir_only_1_b_8055_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "sept-16-idir-only-1-b-8055" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "sept-16-idir-only-1-b-8055"
  client_name                         = "Sept 16 IDIR Only -1b"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.sept_16_idir_only_1_b_8055_browserflow.id
  standard_flow_enabled        = true
  service_accounts_enabled     = false
  valid_redirect_uris = [
    "http://localhost:3000/*",
    "https://bcgov.github.io/keycloak-example-apps/*"
  ]
}
