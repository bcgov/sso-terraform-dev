data "keycloak_authentication_flow" "aet_1981_browserflow" {
  realm_id = data.keycloak_realm.this.id
  alias    = "IDIR Redirector"
}
module "client_aet-1981" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "aet-1981"
  valid_redirect_uris = [
    "http://a"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.aet_1981_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "+"
  ]
}
