module "client_project-test-23-08-20-2021-961" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "project-test-23-08-20-2021-961"
  valid_redirect_uris = [
    "http://test234"
  ]
}
