module "client_test-project" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-project"
  valid_redirect_uris = [
    "http://localhost:3000"
  ]
}
