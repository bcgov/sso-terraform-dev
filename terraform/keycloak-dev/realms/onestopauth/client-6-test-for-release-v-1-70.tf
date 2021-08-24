module "client_6-test-for-release-v-1-70" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "6-test-for-release-v-1-70"
  valid_redirect_uris = [
    "http://5test.gov.bc.ca"
  ]
}
