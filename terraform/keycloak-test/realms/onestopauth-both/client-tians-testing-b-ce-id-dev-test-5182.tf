module "client_tians-testing-b-ce-id-dev-test-5182" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "tians-testing-b-ce-id-dev-test-5182"
  valid_redirect_uris = [
    "https://example"
  ]
  description = "CSS App Created"
}
