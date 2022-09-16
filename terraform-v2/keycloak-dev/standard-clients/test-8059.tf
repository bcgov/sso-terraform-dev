data "keycloak_authentication_flow" "test_8059_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "test-8059" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "test-8059"
  client_name        = "test "
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
  browser_authentication_flow  = data.keycloak_authentication_flow.test_8059_browserflow.id
}
