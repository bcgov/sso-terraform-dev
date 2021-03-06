data "keycloak_authentication_flow" "tian_second_gold_7370_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "tian-second-gold-7370" {
  source    = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id  = var.standard_realm_id
  client_id = "tian-second-gold-7370"
  valid_redirect_uris = [
    "https://exampleProd"
  ]
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
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
