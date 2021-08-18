module "client_test-project-2-664" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-project-2-664"
  valid_redirect_uris = [
    "http://test"
  ]
}
