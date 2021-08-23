module "client_jon-test-1-235" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "jon-test-1-235"
  valid_redirect_uris = [
    "http://c"
  ]
}
