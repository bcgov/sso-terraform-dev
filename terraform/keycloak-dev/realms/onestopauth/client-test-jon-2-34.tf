module "client_test-jon-2-34" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-jon-2-34"
  valid_redirect_uris = [
    "http://dev"
  ]
}
