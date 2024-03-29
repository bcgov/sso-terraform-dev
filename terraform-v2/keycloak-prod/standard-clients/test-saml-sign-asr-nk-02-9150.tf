module "test-saml-sign-asr-nk-02-9150" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "test-saml-sign-asr-nk-02-9150"
  client_name        = "test-saml-sign-asr-nk02"
  assertion_lifespan = ""
  valid_redirect_uris = [
    "https://example.com"
  ]
  idps = [
    "azureidir",
    "common"
  ]
  description                  = "CSS App Created"
  additional_role_attribute    = ""
  logout_post_binding_url      = ""
  sign_assertions              = true
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
}
