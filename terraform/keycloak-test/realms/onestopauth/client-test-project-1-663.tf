module "client_test-project-1-663" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-project-1-663"
  valid_redirect_uris = [
    "http://test1"
  ]
}
