module "test-9982" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "test-9982"
  client_name        = "test"
  assertion_lifespan = ""
  valid_redirect_uris = [
    "http://costly-irrigation.biz"
  ]
  idps = [
    "githubbcgov",
    "common"
  ]
  description                  = "CSS App Created"
  additional_role_attribute    = ""
  logout_post_binding_url      = "http://localhost/logout"
  sign_assertions              = true
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
}
