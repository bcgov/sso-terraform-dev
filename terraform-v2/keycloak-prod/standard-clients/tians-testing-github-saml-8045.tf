data "keycloak_authentication_flow" "tians_testing_github_saml_8045_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "tians-testing-github-saml-8045" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "tians-testing-github-saml-8045"
  client_name        = "Tian's Testing - Github SAML"
  assertion_lifespan = 1920
  valid_redirect_uris = [
    "https://bcgov.github.io/keycloak-example-apps/*"
  ]
  idps = [
    "idir",
    "azureidir",
    "bceidboth",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.tians_testing_github_saml_8045_browserflow.id
}
