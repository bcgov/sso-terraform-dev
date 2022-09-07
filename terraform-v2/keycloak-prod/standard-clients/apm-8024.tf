data "keycloak_authentication_flow" "apm_8024_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "apm-8024" {
  source             = "github.com/bcgov/sso-terraform-modules?ref=dev/modules/standard-client-saml"
  realm_id           = var.standard_realm_id
  client_id          = "apm-8024"
  client_name        = "APM"
  assertion_lifespan = ""
  valid_redirect_uris = [
    "https://apm.io.nrs.gov.bc.ca"
  ]
  idps = [
    "idir",
    "azureidir",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.apm_8024_browserflow.id
}
