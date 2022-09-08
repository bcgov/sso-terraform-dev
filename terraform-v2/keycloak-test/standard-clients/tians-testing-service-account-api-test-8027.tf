data "keycloak_authentication_flow" "tians_testing_service_account_api_test_8027_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "tians-testing-service-account-api-test-8027" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "tians-testing-service-account-api-test-8027"
  client_name                         = "Tian's Testing - Service Account API Test"
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.tians_testing_service_account_api_test_8027_browserflow.id
  standard_flow_enabled        = false
  service_accounts_enabled     = true
}
