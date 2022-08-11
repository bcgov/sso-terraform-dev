module "client_diff-idp-testing-create-in-silver-7900" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_id   = "diff-idp-testing-create-in-silver-7900"
  client_name = "diff-idp-testing-create-in-silver-7900"
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
