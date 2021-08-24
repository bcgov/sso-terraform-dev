module "client_jon-test-3-35" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "jon-test-3-35"
  valid_redirect_uris = [
    "http://dev"
  ]
}
