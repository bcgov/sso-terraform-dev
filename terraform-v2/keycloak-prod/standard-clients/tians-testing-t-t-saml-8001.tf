data "keycloak_authentication_flow" "tians_testing_t_t_saml_8001_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "tians-testing-t-t-saml-8001" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "tians-testing-t-t-saml-8001"
  client_name        = "Tian's Testing - T&T SAML"
  assertion_lifespan = ""
  valid_redirect_uris = [
    "https://exampleProd"
  ]
  idps = [
    "idir",
    "azureidir",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.tians_testing_t_t_saml_8001_browserflow.id
}
