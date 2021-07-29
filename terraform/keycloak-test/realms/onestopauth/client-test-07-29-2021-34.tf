module "client_test-07-29-2021-34" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-07-29-2021-34"
  valid_redirect_uris = [
    "http://r"
  ]
}
