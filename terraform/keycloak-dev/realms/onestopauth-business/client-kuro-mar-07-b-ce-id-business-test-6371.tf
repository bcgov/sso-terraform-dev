module "client_kuro-mar-07-b-ce-id-business-test-6371" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "kuro-mar-07-b-ce-id-business-test-6371"
  valid_redirect_uris = [
    "http://bceidDev.com",
    "http://devchange.com"
  ]
  description = "CSS App Created"
}
