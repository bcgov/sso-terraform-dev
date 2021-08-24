module "client_project-test-7-27-2021-67" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "project-test-7-27-2021-67"
  valid_redirect_uris = [
    "http://y"
  ]
}
