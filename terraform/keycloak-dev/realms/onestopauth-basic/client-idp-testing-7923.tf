module "client_idp-testing-7923" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_id   = "idp-testing-7923"
  client_name = "idp-testing-7923"
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
