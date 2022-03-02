module "client_march-3-jon-b-ce-id-basic-test-6073" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "march-3-jon-b-ce-id-basic-test-6073"
  valid_redirect_uris = [
    "http://bceidDev.com",
    "https://devchange.com"
  ]
  description = "CSS App Created"
}
