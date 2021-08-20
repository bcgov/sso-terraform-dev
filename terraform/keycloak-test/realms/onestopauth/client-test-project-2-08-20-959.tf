module "client_test-project-2-08-20-959" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-project-2-08-20-959"
  valid_redirect_uris = [
    "http://test123A"
  ]
}
