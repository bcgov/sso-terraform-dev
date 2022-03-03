module "client_kuro-mar-02-idir-test-6077" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "kuro-mar-02-idir-test-6077"
  valid_redirect_uris = [
    "https://localhost:3000",
    "https://www.deveditredirect.ca"
  ]
  description = "CSS App Created"
}
