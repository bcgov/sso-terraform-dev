module "client_test-2" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-2"
  valid_redirect_uris = [
    "http://example.com"
  ]
}
