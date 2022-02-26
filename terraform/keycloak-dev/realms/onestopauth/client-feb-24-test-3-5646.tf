module "client_feb-24-test-3-5646" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "feb-24-test-3-5646"
  valid_redirect_uris = [
    "https:///www.test.ca/devChange"
  ]
  description = "CSS App Created"
}
