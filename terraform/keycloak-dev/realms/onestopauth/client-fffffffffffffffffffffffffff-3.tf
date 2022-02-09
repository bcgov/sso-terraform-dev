module "client_fffffffffffffffffffffffffff-3" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "fffffffffffffffffffffffffff-3"
  valid_redirect_uris = [
    "http://localhost:3000"
  ]
  description = "CSS App Created"
}
