module "client_test-07-28-2021-1" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-07-28-2021-1"
  valid_redirect_uris = [
    "http://tr"
  ]
}
