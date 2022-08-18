data "keycloak_authentication_flow" "tians_testing_saml_2_with_team_7961_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "tians-testing-saml-2-with-team-7961" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "tians-testing-saml-2-with-team-7961"
  client_name        = "Tian's Testing - SAML 2 with team"
  assertion_lifespan = 60
  valid_redirect_uris = [
    "https://example"
  ]
  idps = [
    "idir",
    "bceidboth",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.tians_testing_saml_2_with_team_7961_browserflow.id
}
