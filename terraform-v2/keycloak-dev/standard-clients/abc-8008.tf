data "keycloak_authentication_flow" "abc_8008_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "abc-8008" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "abc-8008"
  client_name        = "abc"
  assertion_lifespan = ""
  valid_redirect_uris = [
    "https://bcgov.github.io/keycloak-example-apps/*"
  ]
  idps = [
    "idir",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.abc_8008_browserflow.id
}
