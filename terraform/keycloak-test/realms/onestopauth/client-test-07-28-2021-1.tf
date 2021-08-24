module "client_test-07-28-2021-1" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-07-28-2021-1"
  valid_redirect_uris = [
    "http://tdsds"
  ]
}
