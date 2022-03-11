module "client_march-10-test-2-zorin-6613" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "march-10-test-2-zorin-6613"
  valid_redirect_uris = [
    "https:///www.test.ca/devChange2"
  ]
  description = "CSS App Created"
}
