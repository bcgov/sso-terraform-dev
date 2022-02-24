module "client_test-feb-23-5380" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-feb-23-5380"
  valid_redirect_uris = [
    "http://localhost:4040"
  ]
  description = "CSS App Created"
}
