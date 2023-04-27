module "tians-testing-4-27-saml-b-ce-id-8599" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "tians-testing-4-27-saml-b-ce-id-8599"
  client_name        = "Tian's Testing 4/27 SAML BCeID"
  assertion_lifespan = ""
  valid_redirect_uris = [
    "http://localhost:8080/*"
  ]
  idps = [
    "common"
  ]
  description                  = "CSS App Created"
  additional_role_attribute    = ""
  logout_post_binding_url      = "http://localhost:8080/logout/callback"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
}
