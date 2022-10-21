module "tians-testing-8253" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "tians-testing-8253"
  client_name        = "Tian's Testing"
  assertion_lifespan = 720
  valid_redirect_uris = [
    "https://bcgov.github.io/keycloak-example-apps/*"
  ]
  idps = [
    "idir",
    "azureidir",
    "githubbcgov",
    "common"
  ]
  description                  = "CSS App Created"
  additional_role_attribute    = ""
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
}
