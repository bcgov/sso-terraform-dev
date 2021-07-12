module "client_test" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test"
  valid_redirect_uris = [
    "http://www.example.com"
  ]
}
