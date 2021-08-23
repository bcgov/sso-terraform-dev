module "client_project-test-23-08-20-2021-961" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "project-test-23-08-20-2021-961"
  valid_redirect_uris = [
    "http://test234"
  ]
}
