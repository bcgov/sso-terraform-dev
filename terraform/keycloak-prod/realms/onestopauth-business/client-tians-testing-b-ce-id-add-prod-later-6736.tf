module "client_tians-testing-b-ce-id-add-prod-later-6736" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "tians-testing-b-ce-id-add-prod-later-6736"
  valid_redirect_uris = [
    "https://exampleProd"
  ]
  description = "CSS App Created"
}
