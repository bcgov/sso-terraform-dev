module "client_testprojectjunabcedfg-100" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "testprojectjunabcedfg-100"
  valid_redirect_uris = [
    "http://localhost:3000"
  ]
}
