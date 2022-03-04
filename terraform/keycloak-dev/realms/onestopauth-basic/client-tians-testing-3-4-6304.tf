module "client_tians-testing-3-4-6304" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "tians-testing-3-4-6304"
  valid_redirect_uris = [
    "http://example.ccaa"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://example.ccaa",
    "+"
  ]
}
