module "client_tians-testing-idir-only-with-team-5149" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "tians-testing-idir-only-with-team-5149"
  valid_redirect_uris = [
    "https://www.youtube.com/watch?v=O_0bKdQiHo0"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://www.youtube.com/watch?v=O_0bKdQiHo0",
    "+"
  ]
}
