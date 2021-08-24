module "client_a-793" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "a-793"
  valid_redirect_uris = [
    "http://a"
  ]
}
