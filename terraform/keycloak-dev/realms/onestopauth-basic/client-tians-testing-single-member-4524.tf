module "client_tians-testing-single-member-4524" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "tians-testing-single-member-4524"
  valid_redirect_uris = [
    "https://exampleaa"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://exampleaa",
    "+"
  ]
}
