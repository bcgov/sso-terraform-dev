module "client_ztest-jan-30-4753" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "ztest-jan-30-4753"
  valid_redirect_uris = [
    "https:///www.test.ca/devChange"
  ]
  description = "CSS App Created"
}
