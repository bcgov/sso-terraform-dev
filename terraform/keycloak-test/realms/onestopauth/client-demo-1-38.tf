module "client_demo-1-38" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "demo-1-38"
  valid_redirect_uris = [
    "http://test"
  ]
}
