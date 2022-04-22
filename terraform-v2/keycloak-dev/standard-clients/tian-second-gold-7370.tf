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
  description = "CSS App Created"
}
