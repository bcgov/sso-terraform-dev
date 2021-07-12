module "client_jon-test-1" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "jon-test-1"
  valid_redirect_uris = [
    "http://example.com"
  ]
}
