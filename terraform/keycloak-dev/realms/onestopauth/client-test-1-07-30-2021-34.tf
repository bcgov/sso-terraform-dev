module "client_test-1-07-30-2021-34" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-1-07-30-2021-34"
  valid_redirect_uris = [
    "http://tr"
  ]
}
