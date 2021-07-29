module "client_jon-test-2-265" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "jon-test-2-265"
  valid_redirect_uris = [
    "http://a"
  ]
}
