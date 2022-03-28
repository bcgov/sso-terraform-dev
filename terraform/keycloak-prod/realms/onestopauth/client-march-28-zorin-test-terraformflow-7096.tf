module "client_march-28-zorin-test-terraformflow-7096" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "march-28-zorin-test-terraformflow-7096"
  valid_redirect_uris = [
    "https:///www.test.ca/prod1"
  ]
  description = "CSS App Created"
}
