module "client_jjjjjjjjjjjjjjjjjjjj-11" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "jjjjjjjjjjjjjjjjjjjj-11"
  valid_redirect_uris = [
    "http://localhost:3001"
  ]
  description = "CSS App Created"
}
