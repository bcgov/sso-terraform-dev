module "client_test-3-07-29-2021-266" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-3-07-29-2021-266"
  valid_redirect_uris = [
    "http://dd"
  ]
}
