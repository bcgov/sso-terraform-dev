module "client_test-133" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-133"
  valid_redirect_uris = [
    "https://redirecttest.ca"
  ]
}
