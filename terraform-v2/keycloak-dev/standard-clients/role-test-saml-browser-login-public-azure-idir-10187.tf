module "role-test-saml-browser-login-public-azure-idir-10187" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "role-test-saml-browser-login-public-azure-idir-10187"
  client_name        = "SSO Header Dev"
  assertion_lifespan = ""
  valid_redirect_uris = [
    "*"
  ]
  idps = [
    "azureidir",
    "common"
  ]
  description                  = "CSS App Created"
  additional_role_attribute    = "tbd"
  logout_post_binding_url      = ""
  sign_assertions              = false
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
}
