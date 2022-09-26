module "tians-testing-9-26-git-hub-with-prod-8109" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "tians-testing-9-26-git-hub-with-prod-8109"
  client_name        = "Tian's Testing - 9/26 GitHub with prod"
  assertion_lifespan = ""
  valid_redirect_uris = [
    "https://exampleProd"
  ]
  idps = [
    "common"
  ]
  description                  = "CSS App Created"
  additional_role_attribute    = ""
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
}
