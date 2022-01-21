module "client_demo-for-n-8-ntt-4457" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "demo-for-n-8-ntt-4457"
  valid_redirect_uris = [
    "https://www.test.ca/testCHANGED"
  ]
  description = "CSS App Created"
}
