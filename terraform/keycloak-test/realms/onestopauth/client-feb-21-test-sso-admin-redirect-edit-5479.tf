module "client_feb-21-test-sso-admin-redirect-edit-5479" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "feb-21-test-sso-admin-redirect-edit-5479"
  valid_redirect_uris = [
    "https://www.test.ca/test"
  ]
  description = "CSS App Created"
}
