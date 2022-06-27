module "client_march-4-test-2-6338" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_id   = "march-4-test-2-6338"
  client_name = "march-4-test-2-6338"
  valid_redirect_uris = [
    "https://localhost:8080"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://localhost:8080",
    "+"
  ]
}
