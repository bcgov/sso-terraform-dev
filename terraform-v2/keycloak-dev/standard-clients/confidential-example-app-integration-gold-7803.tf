data "keycloak_authentication_flow" "confidential_example_app_integration_gold_7803_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "confidential-example-app-integration-gold-7803" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "confidential-example-app-integration-gold-7803"
  client_name                         = "Confidential Example App Integration Gold"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.confidential_example_app_integration_gold_7803_browserflow.id
  standard_flow_enabled        = true
  service_accounts_enabled     = false
  valid_redirect_uris = [
    "http://localhost:3000/oauth/cognito"
  ]
}
