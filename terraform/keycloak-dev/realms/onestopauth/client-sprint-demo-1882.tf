module "client_sprint-demo-1882" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "sprint-demo-1882"
  valid_redirect_uris = [
    "http://a"
  ]
}
