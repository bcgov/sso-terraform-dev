module "client_testprojectjunmin-2222-100" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "testprojectjunmin-2222-100"
  valid_redirect_uris = [
    "http://localhost:1000"
  ]
}
