module "client_tians-testing-idir-only-with-team-5149" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "tians-testing-idir-only-with-team-5149"
  valid_redirect_uris = [
    "https://example",
    "https://examplecs",
    "https://examplecsaaa"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://example",
    "https://examplecs",
    "https://examplecsaaa",
    "+"
  ]
}
