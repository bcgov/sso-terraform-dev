module "tians-testing-5-5-saml-8698" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "tians-testing-5-5-saml-abc"
  client_name        = "Tian's Testing 5/5 SAML "
  assertion_lifespan = ""
  valid_redirect_uris = [
    "https://example"
  ]
  idps = [
    "bceidbasic",
    "common"
  ]
  description                  = "CSS App Created"
  additional_role_attribute    = ""
  logout_post_binding_url      = ""
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
}
