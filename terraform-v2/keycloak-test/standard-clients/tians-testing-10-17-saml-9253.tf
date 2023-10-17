module "tians-testing-10-17-saml-9253" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "tians-testing-10-17-saml-9253"
  client_name        = "Tian's Testing 10/17 SAML"
  assertion_lifespan = ""
  valid_redirect_uris = [
    "https://bcgov.github.io/keycloak-example-apps/*"
  ]
  idps = [
    "githubbcgov",
    "common"
  ]
  description                  = "CSS App Created"
  additional_role_attribute    = ""
  logout_post_binding_url      = ""
  sign_assertions              = true
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
}
