module "client_junmin-client-test-101" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "junmin-client-test-101"
  valid_redirect_uris = [
    "http://localhost:3000"
  ]
}
