module "client_testprojectjunmin-2222-1" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "testprojectjunmin-2222-1"
  valid_redirect_uris = [
    "http://localhost:3000"
  ]
}
