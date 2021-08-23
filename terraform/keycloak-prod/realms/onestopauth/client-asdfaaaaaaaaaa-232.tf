module "client_asdfaaaaaaaaaa-232" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "asdfaaaaaaaaaa-232"
  valid_redirect_uris = [
    "http://localhost:1000"
  ]
}
