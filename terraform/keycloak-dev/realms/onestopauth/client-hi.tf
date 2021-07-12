module "client_hi" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "hi"
  valid_redirect_uris = [
    "http://exmaple.com"
  ]
}
