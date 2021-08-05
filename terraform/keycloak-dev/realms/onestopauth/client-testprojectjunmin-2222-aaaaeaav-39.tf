module "client_testprojectjunmin-2222-aaaaeaav-39" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "testprojectjunmin-2222-aaaaeaav-39"
  valid_redirect_uris = [
    "http://localhost:100022",
    "http://localhost:10011",
    "http://localhost:100111"
  ]
}
