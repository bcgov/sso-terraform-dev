module "client_junminclienttest-100-67" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "junminclienttest-100-67"
  valid_redirect_uris = [
    "http://localhost:3000"
  ]
}
