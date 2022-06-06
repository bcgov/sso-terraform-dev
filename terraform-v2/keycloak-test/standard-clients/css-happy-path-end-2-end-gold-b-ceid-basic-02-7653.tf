data "keycloak_authentication_flow" "css_happy_path_end_2_end_gold_b_ceid_basic_02_7653_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "css-happy-path-end-2-end-gold-b-ceid-basic-02-7653" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id    = var.standard_realm_id
  client_id   = "css-happy-path-end-2-end-gold-b-ceid-basic-02-7653"
  client_name = "CSS-HappyPath-end2end_GoldBCeidBasic02"
  valid_redirect_uris = [
    "https://localhost:3000"
  ]
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "bceidbasic",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.css_happy_path_end_2_end_gold_b_ceid_basic_02_7653_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "https://localhost:3000",
    "+"
  ]
}
