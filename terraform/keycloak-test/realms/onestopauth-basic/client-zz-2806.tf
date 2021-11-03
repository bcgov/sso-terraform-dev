module "client_zz-2806" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "zz-2806"
  valid_redirect_uris = [
    "https://."
  ]
  description = "CSS App Created"
}
