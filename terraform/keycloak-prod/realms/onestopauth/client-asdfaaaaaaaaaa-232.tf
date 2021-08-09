module "client_asdfaaaaaaaaaa-232" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "asdfaaaaaaaaaa-232"
  valid_redirect_uris = [
    "http://localhost:1000"
  ]
}
