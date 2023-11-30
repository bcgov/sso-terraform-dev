module "create-saml-2-team-10035" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "create-saml-2-team-10035"
  client_name        = "Header Shown Test"
  assertion_lifespan = ""
  valid_redirect_uris = [
    "https://newlyadded.com",
    "https://test.com"
  ]
  idps = [
    "bceidboth",
    "common"
  ]
  description                  = "CSS App Created"
  additional_role_attribute    = "TBD"
  logout_post_binding_url      = ""
  sign_assertions              = false
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
}
