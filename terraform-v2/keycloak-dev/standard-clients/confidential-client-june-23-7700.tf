data "keycloak_authentication_flow" "confidential_client_june_23_7700_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "confidential-client-june-23-7700" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id    = var.standard_realm_id
  client_id   = "confidential-client-june-23-7700"
  client_name = "confidential client June 23"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.confidential_client_june_23_7700_browserflow.id
}
