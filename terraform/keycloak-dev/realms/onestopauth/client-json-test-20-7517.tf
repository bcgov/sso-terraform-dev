module "client_json-test-20-7517" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_id   = "json-test-20-7517"
  client_name = "json-test-20-7517"
  valid_redirect_uris = [
    "https://localhost:3000"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://localhost:3000",
    "+"
  ]
}
