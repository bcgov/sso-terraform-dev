module "client_tians-testing-silver-in-silver-7372" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "tians-testing-silver-in-silver-7372"
  valid_redirect_uris = [
    "https://exampledevd"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://exampledevd",
    "+"
  ]
}
