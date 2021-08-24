module "client_asdfeeeeeeeee-42" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "asdfeeeeeeeee-42"
  valid_redirect_uris = [
    "http://localhost:10045"
  ]
}
