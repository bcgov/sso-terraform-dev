module "client_jon-junmin-test-01-04-22-4027" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "jon-junmin-test-01-04-22-4027"
  valid_redirect_uris = [
    "http://localhost"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
