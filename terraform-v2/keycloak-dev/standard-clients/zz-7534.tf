data "keycloak_authentication_flow" "zz_7534_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "zz-7534" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id    = var.standard_realm_id
  client_id   = "zz-7534"
  client_name = "zz"
  valid_redirect_uris = [
    "https://."
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
  browser_authentication_flow  = data.keycloak_authentication_flow.zz_7534_browserflow.id
}
