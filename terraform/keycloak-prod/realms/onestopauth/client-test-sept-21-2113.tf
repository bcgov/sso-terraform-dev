module "client_test-sept-21-2113" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-sept-21-2113"
  valid_redirect_uris = [
    "http://c"
  ]
}
