module "test-saml-custm-clntdid-nk-8991" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "https://login.browserstack.com/auth/realms/6d0c9eb9d7c86a9e0258b275b467c4f3"
  client_name        = "test-saml-custm-clntdid-nk"
  assertion_lifespan = ""
  valid_redirect_uris = [
    "*"
  ]
  idps = [
    "idir",
    "common"
  ]
  description                  = "CSS App Created"
  additional_role_attribute    = ""
  logout_post_binding_url      = ""
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
}
