module "client_jaffer-first-test-6964" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "jaffer-first-test-6964"
  valid_redirect_uris = [
    "https://localhost:8000"
  ]
  description = "CSS App Created"
}
