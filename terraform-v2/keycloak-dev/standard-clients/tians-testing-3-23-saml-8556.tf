module "tians-testing-3-23-saml-8556" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "tians-testing-3-23-saml-8556"
  client_name        = "Tian's Testing 3/23 saml"
  assertion_lifespan = ""
  valid_redirect_uris = [
    "https://example"
  ]
  idps = [
    "bceidboth",
    "common"
  ]
  description                  = "CSS App Created"
  additional_role_attribute    = ""
  logout_post_binding_url      = "https://example*"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
}
