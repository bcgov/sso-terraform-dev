module "client_aet-1981" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "aet-1981"
  valid_redirect_uris = [
    "http://b"
  ]
  description                 = "CSS App Created"
  browser_authentication_flow = "af0f2840-e6e9-4cf4-b815-ac45c6f4ff24"
  access_type                 = "PUBLIC"
  pkce_code_challenge_method  = "S256"
  web_origins = [
    "+"
  ]
}
