module "client_jon-test-3-35" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "jon-test-3-35"
  valid_redirect_uris = [
    "http://dev"
  ]
}
