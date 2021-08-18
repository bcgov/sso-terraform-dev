module "client_test-project-1-663" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-project-1-663"
  valid_redirect_uris = [
    "http://test1"
  ]
}
