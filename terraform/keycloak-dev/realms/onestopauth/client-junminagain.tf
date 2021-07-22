module "client_junminagain" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "junminagain"
  valid_redirect_uris = [
    "http://localhost.com"
  ]
}
