module "client_kuro-mar-07-b-ce-id-both-test-6372" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "kuro-mar-07-b-ce-id-both-test-6372"
  valid_redirect_uris = [
    "http://prodtest.com"
  ]
  description = "CSS App Created"
}
