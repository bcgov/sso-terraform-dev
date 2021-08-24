module "client_junmin-request-34" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "junmin-request-34"
  valid_redirect_uris = [
    "http://localhost:1000",
    "http://localhost:1001",
    "http://localhost:1010"
  ]
}
