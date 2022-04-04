module "client_kuro-testing-5" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "kuro-testing-5"
  valid_redirect_uris = [
    "http://devchange.com"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://devchange.com",
    "+"
  ]
}
