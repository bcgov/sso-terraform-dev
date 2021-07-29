module "client_test-232" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-232"
  valid_redirect_uris = [
    "http://b"
  ]
}
