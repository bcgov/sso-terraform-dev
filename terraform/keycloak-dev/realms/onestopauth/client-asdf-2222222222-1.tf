module "client_asdf-2222222222-1" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "asdf-2222222222-1"
  valid_redirect_uris = [
    "http://localhost:1000"
  ]
}
