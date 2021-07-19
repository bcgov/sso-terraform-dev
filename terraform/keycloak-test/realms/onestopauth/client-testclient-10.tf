module "client_testclient-10" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "testclient-10"
  valid_redirect_uris = [
    "http://example.com"
  ]
}
