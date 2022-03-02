module "client_march-3-jon-b-ce-id-basic-test-6073" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "march-3-jon-b-ce-id-basic-test-6073"
  valid_redirect_uris = [
    "http://bceidTest.com"
  ]
  description                = "CSS App Created"
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "http://bceidTest.com",
    "+"
  ]
}
