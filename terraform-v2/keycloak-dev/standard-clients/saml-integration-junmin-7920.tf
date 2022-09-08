data "keycloak_authentication_flow" "saml_integration_junmin_7920_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "saml-integration-junmin-7920" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "saml-integration-junmin-7920"
  client_name        = "saml integration - junmin"
  assertion_lifespan = ""
  valid_redirect_uris = [
    "http://localhost:3000"
  ]
  idps = [
    "idir",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.saml_integration_junmin_7920_browserflow.id
}
