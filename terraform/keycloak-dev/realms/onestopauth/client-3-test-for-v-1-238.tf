module "client_3-test-for-v-1-238" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "3-test-for-v-1-238"
  valid_redirect_uris = [
    "http://3test.gov.bc.ca"
  ]
}
