module "client_testprojectjunmin-2222-67" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "testprojectjunmin-2222-67"
  valid_redirect_uris = [
    "http://localhost:3000222"
  ]
}
