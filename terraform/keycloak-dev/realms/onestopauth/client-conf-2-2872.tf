module "client_conf-2-2872" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "conf-2-2872"
  valid_redirect_uris = [
    "http://a"
  ]
  description = "CSS App Created"
}
