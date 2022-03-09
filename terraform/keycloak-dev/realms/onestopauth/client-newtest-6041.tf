module "client_newtest-6041" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "newtest-6041"
  valid_redirect_uris = [
    "http://localhost:3000"
  ]
  description = "CSS App Created"
}
