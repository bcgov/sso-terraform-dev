module "client_bceid-testzorin-2707" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "bceid-testzorin-2707"
  valid_redirect_uris = [
    "https://www.google.ca"
  ]
  description = "CSS App Created"
}
