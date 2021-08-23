module "client_test-958" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-958"
  valid_redirect_uris = [
    "http://a"
  ]
}
