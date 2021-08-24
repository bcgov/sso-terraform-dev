module "client_test-133" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-133"
  valid_redirect_uris = [
    "https://redirecttest.ca"
  ]
}
