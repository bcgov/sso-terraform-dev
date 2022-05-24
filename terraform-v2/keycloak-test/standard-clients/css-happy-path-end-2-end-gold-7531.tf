data "keycloak_authentication_flow" "css_happy_path_end_2_end_gold_7531_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "css-happy-path-end-2-end-gold-7531" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id    = var.standard_realm_id
  client_id   = "css-happy-path-end-2-end-gold-7531"
  client_name = "CSS-HappyPath-end2end_Gold"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.css_happy_path_end_2_end_gold_7531_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "https://localhost:3000",
    "+"
  ]
}
