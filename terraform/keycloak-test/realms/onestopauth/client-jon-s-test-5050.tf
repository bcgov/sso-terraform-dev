module "client_jon-s-test-5050" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "jon-s-test-5050"
  valid_redirect_uris = [
    "https://test.test.com"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://test.test.com",
    "+"
  ]
}
