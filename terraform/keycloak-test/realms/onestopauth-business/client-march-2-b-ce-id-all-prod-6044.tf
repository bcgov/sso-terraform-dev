module "client_march-2-b-ce-id-all-prod-6044" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_id   = "march-2-b-ce-id-all-prod-6044"
  client_name = "march-2-b-ce-id-all-prod-6044"
  valid_redirect_uris = [
    "https://bcgov.github.io/keycloak-example-apps/*"
  ]
  description = "CSS App Created"
}
