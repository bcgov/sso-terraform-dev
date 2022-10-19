module "client_jon-b-ce-id-test-1" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_id   = "jon-b-ce-id-test-1"
  client_name = "jon-b-ce-id-test-1"
  valid_redirect_uris = [
    "https://www.jon.com"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://www.jon.com",
    "+"
  ]
}
