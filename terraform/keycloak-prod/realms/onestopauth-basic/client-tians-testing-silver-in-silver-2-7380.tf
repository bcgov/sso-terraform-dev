module "client_tians-testing-silver-in-silver-2-7380" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "tians-testing-silver-in-silver-2-7380"
  valid_redirect_uris = [
    "https://exampleProd"
  ]
  description = "CSS App Created"
}
