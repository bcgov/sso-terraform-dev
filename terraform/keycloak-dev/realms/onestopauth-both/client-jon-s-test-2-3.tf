module "client_jon-s-test-2-3" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_id   = "jon-s-test-2-3"
  client_name = "jon-s-test-2-3"
  valid_redirect_uris = [
    "https://test.com"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "https://test.com",
    "+"
  ]
}
