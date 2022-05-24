data "keycloak_authentication_flow" "may_23_zorin_test_7529_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "may-23-zorin-test-7529" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id    = var.standard_realm_id
  client_id   = "may-23-zorin-test-7529"
  client_name = "May 23 Zorin Test Confidential"
  valid_redirect_uris = [
    "https://bcgov.github.io/keycloak-example-apps/*"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.may_23_zorin_test_7529_browserflow.id
}
