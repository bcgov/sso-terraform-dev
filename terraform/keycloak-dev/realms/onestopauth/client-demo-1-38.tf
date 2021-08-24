module "client_demo-1-38" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "demo-1-38"
  valid_redirect_uris = [
    "http://dev"
  ]
}
