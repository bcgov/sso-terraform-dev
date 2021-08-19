module "client_email-test-729" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "email-test-729"
  valid_redirect_uris = [
    "http://a"
  ]
}
