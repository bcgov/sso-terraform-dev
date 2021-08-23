module "client_project-962" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "project-962"
  valid_redirect_uris = [
    "http://test"
  ]
}
