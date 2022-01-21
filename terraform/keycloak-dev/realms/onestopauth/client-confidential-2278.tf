module "client_confidential-2278" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "confidential-2278"
  valid_redirect_uris = [
    "http://a"
  ]
  description = "CSS App Created"
}
