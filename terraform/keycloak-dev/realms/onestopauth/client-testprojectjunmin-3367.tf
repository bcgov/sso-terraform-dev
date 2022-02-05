module "client_testprojectjunmin-3367" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "testprojectjunmin-3367"
  valid_redirect_uris = [
    "http://localhost:3000"
  ]
  description = "CSS App Created"
}
