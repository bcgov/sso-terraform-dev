module "client_test-project-1260" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-project-1260"
  valid_redirect_uris = [
    "http://test"
  ]
}
