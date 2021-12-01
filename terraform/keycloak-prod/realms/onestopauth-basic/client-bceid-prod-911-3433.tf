data "keycloak_authentication_flow" "bceid_prod_911_3433_browserflow" {
  realm_id = data.keycloak_realm.this.id
  alias    = "null"
}
module "client_bceid-prod-911-3433" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "bceid-prod-911-3433"
  valid_redirect_uris = [
    "http://prod"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.bceid_prod_911_3433_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "+"
  ]
}
