module "client_test-958" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-958"
  valid_redirect_uris = [
    "http://c"
  ]
}
