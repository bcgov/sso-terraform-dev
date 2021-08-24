module "client_test-project-2-664" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-project-2-664"
  valid_redirect_uris = [
    "http://test"
  ]
}
