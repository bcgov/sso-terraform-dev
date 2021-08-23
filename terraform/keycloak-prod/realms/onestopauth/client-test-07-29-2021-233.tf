module "client_test-07-29-2021-233" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-07-29-2021-233"
  valid_redirect_uris = [
    "http://fd"
  ]
}
