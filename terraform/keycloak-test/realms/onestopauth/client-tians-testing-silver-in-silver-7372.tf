module "client_tians-testing-silver-in-silver-7372" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "tians-testing-silver-in-silver-7372"
  valid_redirect_uris = [
    "https://example"
  ]
  description = "CSS App Created"
}
