module "client_junmin-test-329-7131" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "junmin-test-329-7131"
  valid_redirect_uris = [
    "http://localhost3030"
  ]
  description = "CSS App Created"
}
