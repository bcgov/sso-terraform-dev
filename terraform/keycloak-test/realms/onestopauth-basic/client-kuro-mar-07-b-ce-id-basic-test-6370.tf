module "client_kuro-mar-07-b-ce-id-basic-test-6370" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "kuro-mar-07-b-ce-id-basic-test-6370"
  valid_redirect_uris = [
    "http://bceidTest.com",
    "http://testchange.com"
  ]
  description = "CSS App Created"
}
