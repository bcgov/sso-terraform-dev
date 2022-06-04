data "keycloak_authentication_flow" "jaffer_first_test_9_7655_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "jaffer-first-test-9-7655" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id    = var.standard_realm_id
  client_id   = "jaffer-first-test-9-7655"
  client_name = "Jaffer_FirstTest9"
  valid_redirect_uris = [
    "https://localhost:8000"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.jaffer_first_test_9_7655_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "https://localhost:8000",
    "+"
  ]
}
