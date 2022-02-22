module "client_feb-21-test-sso-admin-web-origin-update-5480" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "feb-21-test-sso-admin-web-origin-update-5480"
  valid_redirect_uris = [
    "http://www.test.ca"
  ]
  description = "CSS App Created"
}
