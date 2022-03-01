module "client_mar-1-test-1-b-ce-id-5941" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "mar-1-test-1-b-ce-id-5941"
  valid_redirect_uris = [
    "https://www.prod/localhost"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://www.prod/localhost",
    "+"
  ]
}
