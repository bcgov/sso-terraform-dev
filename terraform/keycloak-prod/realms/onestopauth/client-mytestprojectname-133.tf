module "client_mytestprojectname-133" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "mytestprojectname-133"
  valid_redirect_uris = [
    "http://localhost:3000"
  ]
}
