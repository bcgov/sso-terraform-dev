module "client_aug-18-748-test-diff-email-696" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "aug-18-748-test-diff-email-696"
  valid_redirect_uris = [
    "https://www.google.ca"
  ]
}
