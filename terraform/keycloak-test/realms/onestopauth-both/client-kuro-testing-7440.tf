module "client_kuro-testing-7440" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_id   = "kuro-testing-7440"
  client_name = "kuro-testing-7440"
  valid_redirect_uris = [
    "http://testchange.com"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://testchange.com",
    "+"
  ]
}
