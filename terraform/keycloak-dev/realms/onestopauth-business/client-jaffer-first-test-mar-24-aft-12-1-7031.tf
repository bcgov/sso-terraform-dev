module "client_jaffer-first-test-mar-24-aft-12-1-7031" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "jaffer-first-test-mar-24-aft-12-1-7031"
  valid_redirect_uris = [
    "https://localhost:8000"
  ]
  description = "CSS App Created"
}
