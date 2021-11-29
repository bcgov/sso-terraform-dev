module "client_sdfa-3334" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "sdfa-3334"
  valid_redirect_uris = [
    "https://bcgov.github.io/sso-terraform-dev/request/2410"
  ]
  description                 = "CSS App Created"
  browser_authentication_flow = "null"
  access_type                 = "PUBLIC"
  pkce_code_challenge_method  = "S256"
  web_origins = [
    "+"
  ]
}
