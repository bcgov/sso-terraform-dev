module "client_kuro-mar-03-b-ce-id-business-test-6238" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "kuro-mar-03-b-ce-id-business-test-6238"
  valid_redirect_uris = [
    "http://testchange.com",
    "https://bceidTest.com"
  ]
  description = "CSS App Created"
}
