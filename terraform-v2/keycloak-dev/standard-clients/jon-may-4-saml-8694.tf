module "jon-may-4-saml-8694" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "1337"
  client_name        = "Jon May 4 Saml"
  assertion_lifespan = ""
  valid_redirect_uris = [
    "http://localhost:3000/oauth/cognito"
  ]
  idps = [
    "azureidir",
    "common"
  ]
  description                  = "CSS App Created"
  additional_role_attribute    = ""
  logout_post_binding_url      = ""
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
}
