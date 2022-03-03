module "client_kuro-mar-03-b-ce-id-basic-test-6205" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "kuro-mar-03-b-ce-id-basic-test-6205"
  valid_redirect_uris = [
    "http://bceidDev.com"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://bceidDev.com",
    "+"
  ]
}
