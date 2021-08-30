module "client_aug-201242-test-1258" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "aug-201242-test-1258"
  valid_redirect_uris = [
    "https://www.google.ca"
  ]
}
