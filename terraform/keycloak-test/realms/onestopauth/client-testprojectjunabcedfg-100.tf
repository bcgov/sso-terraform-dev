module "client_testprojectjunabcedfg-100" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "testprojectjunabcedfg-100"
  valid_redirect_uris = [
    "http://localhost:3000"
  ]
}
