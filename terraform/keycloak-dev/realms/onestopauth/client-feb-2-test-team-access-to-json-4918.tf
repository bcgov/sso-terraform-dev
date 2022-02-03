module "client_feb-2-test-team-access-to-json-4918" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "feb-2-test-team-access-to-json-4918"
  valid_redirect_uris = [
    "https://testindev"
  ]
  description = "CSS App Created"
}
