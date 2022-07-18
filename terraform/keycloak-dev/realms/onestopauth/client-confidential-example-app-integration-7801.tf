module "client_confidential-example-app-integration-7801" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_id   = "confidential-example-app-integration-7801"
  client_name = "confidential-example-app-integration-7801"
  valid_redirect_uris = [
    "http://localhost:3000/oauth/cognito"
  ]
  description = "CSS App Created"
}
