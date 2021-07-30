module "client_testprojectjunmin-2222-eeff-68" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "testprojectjunmin-2222-eeff-68"
  valid_redirect_uris = [
    "http://localhost:1000"
  ]
}
