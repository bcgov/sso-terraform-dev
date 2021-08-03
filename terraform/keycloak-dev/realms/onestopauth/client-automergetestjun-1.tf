module "client_automergetestjun-1" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "automergetestjun-1"
  valid_redirect_uris = [
    "http://localhost:1000"
  ]
}
