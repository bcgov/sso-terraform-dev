data "keycloak_authentication_flow" "tians_testing_saml_7956_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "tians-testing-saml-7956" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "tians-testing-saml-7956"
  client_name        = "Tian's Testing - SAML"
  assertion_lifespan = 1320
  valid_redirect_uris = [
    "https://example"
  ]
  idps = [
    "idir",
    "azureidir",
    "bceidbasic",
    "bceidbusiness",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.tians_testing_saml_7956_browserflow.id
}
