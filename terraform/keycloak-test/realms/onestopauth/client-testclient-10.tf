module "client_testclient-10" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "testclient-10"
  valid_redirect_uris = [
    "http://example.com"
  ]
}
