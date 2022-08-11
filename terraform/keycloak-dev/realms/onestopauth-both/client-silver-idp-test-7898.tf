module "client_silver-idp-test-7898" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_id   = "silver-idp-test-7898"
  client_name = "silver-idp-test-7898"
  valid_redirect_uris = [
    "http://test.com"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://test.com",
    "+"
  ]
}
