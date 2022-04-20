module "junmin-gold-testss-7168" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = var.standard_realm_id
  client_name = "junmin-gold-testss-7168"
  valid_redirect_uris = [
    "http://localhost:3000"
  ]
  access_token_lifespan               = 518400
  client_session_idle_timeout         = 25200
  client_session_max_lifespan         = 480
  client_offline_session_idle_timeout = 777600
  client_offline_session_max_lifespan = 36000
  idps = [
    "idir",
    "azureidir",
    "common"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://localhost:3000",
    "+"
  ]
}
