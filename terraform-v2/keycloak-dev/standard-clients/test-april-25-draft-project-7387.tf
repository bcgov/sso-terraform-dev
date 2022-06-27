data "keycloak_authentication_flow" "test_april_25_draft_project_7387_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "test-april-25-draft-project-7387" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id    = var.standard_realm_id
  client_id   = "test-april-25-draft-project-7387"
  client_name = ""
  valid_redirect_uris = [
    "http://localhost:6000",
    "https://bcgov.github.io/keycloak-example-apps/*"
  ]
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "bceidboth",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.test_april_25_draft_project_7387_browserflow.id
}
