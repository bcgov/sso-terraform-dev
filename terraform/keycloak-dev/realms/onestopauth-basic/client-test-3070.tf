module "client_test-3070" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-3070"
  valid_redirect_uris = [
    "https://www.google.ca"
  ]
  description = "CSS App Created"
}
