module "client_kuro-mar-03-b-ce-id-both-test-6239" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "kuro-mar-03-b-ce-id-both-test-6239"
  valid_redirect_uris = [
    "http://bceidDev.com",
    "http://devchange.com"
  ]
  description = "CSS App Created"
}
