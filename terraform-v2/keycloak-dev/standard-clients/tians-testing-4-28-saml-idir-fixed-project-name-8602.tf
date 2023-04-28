module "tians-testing-4-28-saml-idir-fixed-project-name-8602" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "tians-testing-4-28-saml-idir-fixed-project-name-8602"
  client_name        = "Tian's Testing - 4/28 SAML IDIR fixed project name"
  assertion_lifespan = ""
  valid_redirect_uris = [
    "http://localhost:8080/*"
  ]
  idps = [
    "idir",
    "common"
  ]
  description                  = "CSS App Created"
  additional_role_attribute    = ""
  logout_post_binding_url      = "http://localhost:8080/logout/callback"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
}
