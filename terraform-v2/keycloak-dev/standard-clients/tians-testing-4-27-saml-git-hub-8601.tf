module "tians-testing-4-27-saml-git-hub-8601" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "1354D"
  client_name        = "Tian's Testing 4/27 SAML GitHub"
  assertion_lifespan = ""
  valid_redirect_uris = [
    "http://localhost:8080/*"
  ]
  idps = [
    "githubbcgov",
    "common"
  ]
  description                  = "CSS App Created"
  additional_role_attribute    = ""
  logout_post_binding_url      = "http://localhost:8080/logout/callback"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
}
