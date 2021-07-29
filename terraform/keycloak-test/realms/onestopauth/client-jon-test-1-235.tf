module "client_jon-test-1-235" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "jon-test-1-235"
  valid_redirect_uris = [
    "http://b"
  ]
}
