module "client_test-jon-1" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-jon-1"
  valid_redirect_uris = [
    "http://c"
  ]
}
