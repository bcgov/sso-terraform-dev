data "keycloak_authentication_flow" "tians_testing_github_oidc_service_acct_8047_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "tians-testing-github-oidc-service-acct-8047" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "tians-testing-github-oidc-service-acct-8047"
  client_name                         = "Tian's Testing - Github OIDC - Service Acct"
  access_token_lifespan               = 60
  client_session_idle_timeout         = 120
  client_session_max_lifespan         = 180
  client_offline_session_idle_timeout = 240
  client_offline_session_max_lifespan = 300
  idps = [
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.tians_testing_github_oidc_service_acct_8047_browserflow.id
  standard_flow_enabled        = false
  service_accounts_enabled     = true
}
