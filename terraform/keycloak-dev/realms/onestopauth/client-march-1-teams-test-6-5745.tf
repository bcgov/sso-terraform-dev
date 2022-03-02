module "client_march-1-teams-test-6-5745" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "march-1-teams-test-6-5745"
  valid_redirect_uris = [
    "https:///www.test.ca/devChange"
  ]
  description = "CSS App Created"
}
