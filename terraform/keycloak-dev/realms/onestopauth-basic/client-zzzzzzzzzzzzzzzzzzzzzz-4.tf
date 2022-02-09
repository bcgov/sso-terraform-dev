module "client_zzzzzzzzzzzzzzzzzzzzzz-4" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "zzzzzzzzzzzzzzzzzzzzzz-4"
  valid_redirect_uris = [
    "http://localhost:3000"
  ]
  description = "CSS App Created"
}
