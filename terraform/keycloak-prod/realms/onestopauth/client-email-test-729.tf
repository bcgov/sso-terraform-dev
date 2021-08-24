module "client_email-test-729" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "email-test-729"
  valid_redirect_uris = [
    "http://c"
  ]
}
