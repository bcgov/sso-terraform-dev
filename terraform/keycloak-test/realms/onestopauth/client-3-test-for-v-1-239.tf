module "client_3-test-for-v-1-239" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "3-test-for-v-1-239"
  valid_redirect_uris = [
    "http://3test.gov.bc.ca"
  ]
}
