module "client_junmin-client-test-101" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "junmin-client-test-101"
  valid_redirect_uris = [
    "http://localhost:3000"
  ]
}
