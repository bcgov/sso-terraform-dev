module "client_test-5-730" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-5-730"
  valid_redirect_uris = [
    "http://test"
  ]
}
