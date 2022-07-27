module "client_junmin-silver-test-10" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_id   = "junmin-silver-test-10"
  client_name = "junmin-silver-test-10"
  valid_redirect_uris = [
    "http://localhost:3000"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://localhost:3000",
    "+"
  ]
}
