data "keycloak_authentication_flow" "saml_test_zorin_7991_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "saml-test-zorin-7991" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "saml-test-zorin-7991"
  client_name        = "abc"
  assertion_lifespan = ""
  valid_redirect_uris = [
    "https://bcgov.github.io/keycloak-example-apps/*"
  ]
  idps = [
    "idir",
    "bceidboth",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.saml_test_zorin_7991_browserflow.id
}
