module "client_test-2-aug-19-728" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-2-aug-19-728"
  valid_redirect_uris = [
    "http://test"
  ]
}
