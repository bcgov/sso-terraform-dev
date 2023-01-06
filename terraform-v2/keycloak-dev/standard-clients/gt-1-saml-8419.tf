module "gt-1-saml-8419" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "gt-1-saml-8419"
  client_name        = "GT1 - SAML"
  assertion_lifespan = ""
  valid_redirect_uris = [
    "https://bcgov.github.io/keycloak-example-apps/*"
  ]
  idps = [
    "idir",
    "azureidir",
    "common"
  ]
  description                  = "CSS App Created"
  additional_role_attribute    = ""
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
}
