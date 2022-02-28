module "client_feb-27-test-2-5744" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "feb-27-test-2-5744"
  valid_redirect_uris = [
    "https://www.test.ca/testCHANGED"
  ]
  description = "CSS App Created"
}
