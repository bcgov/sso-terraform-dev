module "client_nov-16-3204" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "nov-16-3204"
  valid_redirect_uris = [
    "https://."
  ]
  description = "CSS App Created"
}
