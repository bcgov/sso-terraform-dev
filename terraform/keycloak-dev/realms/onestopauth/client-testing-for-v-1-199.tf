module "client_testing-for-v-1-199" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "testing-for-v-1-199"
  valid_redirect_uris = [
    "http://test.gov.bc.ca"
  ]
}
