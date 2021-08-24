module "client_testprojectjunmin-222211111111111111-925" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "testprojectjunmin-222211111111111111-925"
  valid_redirect_uris = [
    "http://localhost:1000"
  ]
}
