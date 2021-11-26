module "client_aet-1981" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "aet-1981"
  valid_redirect_uris = [
    "http://a",
    "http://b"
  ]
  description                 = "CSS App Created"
  browser_authentication_flow = "IDIR Redirector"
  access_type                 = "PUBLIC"
  pkce_code_challenge_method  = "S256"
  web_origins = [
    "+"
  ]
}
