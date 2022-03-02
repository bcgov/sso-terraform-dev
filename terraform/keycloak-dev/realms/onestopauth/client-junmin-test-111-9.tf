module "client_junmin-test-111-9" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "junmin-test-111-9"
  valid_redirect_uris = [
    "http://bbbbbbbbbbbbbbbbb"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://bbbbbbbbbbbbbbbbb",
    "+"
  ]
}
