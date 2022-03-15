module "client_march-10-test-3-zorin-6614" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "march-10-test-3-zorin-6614"
  valid_redirect_uris = [
    "https:///www.test.ca/prod"
  ]
  description = "CSS App Created"
}
