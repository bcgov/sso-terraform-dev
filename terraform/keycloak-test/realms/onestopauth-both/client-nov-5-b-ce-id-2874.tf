module "client_nov-5-b-ce-id-2874" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "nov-5-b-ce-id-2874"
  valid_redirect_uris = [
    "https://."
  ]
  description = "CSS App Created"
}
