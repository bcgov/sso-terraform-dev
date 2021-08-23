module "client_2-test-for-v-1-237" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "2-test-for-v-1-237"
  valid_redirect_uris = [
    "http://2test.gov.bc.ca"
  ]
  access_type                = "PUBLIC"
  pkce_code_challenge_method = "S256"
  web_origins = [
    "+"
  ]
}
