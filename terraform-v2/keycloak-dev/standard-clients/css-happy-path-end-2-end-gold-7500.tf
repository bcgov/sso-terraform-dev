data "keycloak_authentication_flow" "css_happy_path_end_2_end_gold_7500_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "css-happy-path-end-2-end-gold-7500" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = var.standard_realm_id
  client_name = "css-happy-path-end-2-end-gold-7500"
  valid_redirect_uris = [
    "https://localhost:3000"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.css_happy_path_end_2_end_gold_7500_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "https://localhost:3000",
    "+"
  ]
}
