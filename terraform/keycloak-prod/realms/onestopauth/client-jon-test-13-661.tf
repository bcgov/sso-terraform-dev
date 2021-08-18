module "client_jon-test-13-661" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "jon-test-13-661"
  valid_redirect_uris = [
    "http://c"
  ]
}
