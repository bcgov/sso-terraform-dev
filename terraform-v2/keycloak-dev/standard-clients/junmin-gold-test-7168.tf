module "junmin-gold-test-7168" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = var.standard_realm_id
  client_name = "junmin-gold-test-7168"
  valid_redirect_uris = [
    "http://localhost:3001"
  ]
  access_token_lifespan               = 60
  client_session_idle_timeout         = 7200
  client_session_max_lifespan         = 259200
  client_offline_session_idle_timeout = 345600
  client_offline_session_max_lifespan = 18000
  idps = [
    "idir",
    "azureidir",
    "common"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://localhost:3001",
    "+"
  ]
}
