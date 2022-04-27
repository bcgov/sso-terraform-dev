data "keycloak_authentication_flow" "tian_second_gold_7370_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "tian-second-gold-7370" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = var.standard_realm_id
  client_name = "tian-second-gold-7370"
  valid_redirect_uris = [
    "https://exampleddd"
  ]
  access_token_lifespan               = 900
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = 1320
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "idir",
    "azureidir",
    "bceidbusiness",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.tian_second_gold_7370_browserflow.id
}
