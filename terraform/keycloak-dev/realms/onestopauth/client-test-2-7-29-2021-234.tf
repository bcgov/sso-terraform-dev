module "client_test-2-7-29-2021-234" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-2-7-29-2021-234"
  valid_redirect_uris = [
    "http://fdfd"
  ]
}
