module "client_ztest-2-2810" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "ztest-2-2810"
  valid_redirect_uris = [
    "https://www.google.ca"
  ]
  description = "CSS App Created"
}
