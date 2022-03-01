module "client_feb-28-test-2-b-cei-d-prod-5875" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "feb-28-test-2-b-cei-d-prod-5875"
  valid_redirect_uris = [
    "https://example.com"
  ]
  description = "CSS App Created"
}
