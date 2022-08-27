data "keycloak_authentication_flow" "junmin_saml_test_2_7922_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "junmin-saml-test-2-7922" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "junmin-saml-test-2-7922"
  client_name        = "junmin saml test2"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.junmin_saml_test_2_7922_browserflow.id
}
