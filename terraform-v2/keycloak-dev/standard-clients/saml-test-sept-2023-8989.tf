module "saml-test-sept-2023-8989" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "saml-test-sept-2023-8989"
  client_name        = "saml-test-sept2023"
  assertion_lifespan = ""
  valid_redirect_uris = [
    "https://bcgov.github.io/keycloak-example-apps/"
  ]
  idps = [
    "idir",
    "common"
  ]
  description                  = "CSS App Created"
  additional_role_attribute    = ""
  logout_post_binding_url      = ""
  sign_assertions              = ""
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
}
