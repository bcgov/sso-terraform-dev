module "client_zz-2807" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "zz-2807"
  valid_redirect_uris = [
    "https://.",
    "https://."
  ]
  description = "CSS App Created"
}
