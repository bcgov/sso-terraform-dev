module "client_march-10-test-6603" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "march-10-test-6603"
  valid_redirect_uris = [
    "http://localhost:10004"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://localhost:10004",
    "+"
  ]
}
