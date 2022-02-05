module "client_feb-4-test-3-5018" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "feb-4-test-3-5018"
  valid_redirect_uris = [
    "https:///www.test.ca/devChange"
  ]
  description = "CSS App Created"
}
