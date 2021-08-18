module "client_jon-1-265" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "jon-1-265"
  valid_redirect_uris = [
    "http://a"
  ]
}
