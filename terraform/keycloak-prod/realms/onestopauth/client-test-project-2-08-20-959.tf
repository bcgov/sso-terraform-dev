module "client_test-project-2-08-20-959" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-project-2-08-20-959"
  valid_redirect_uris = [
    "http://test123A"
  ]
}
