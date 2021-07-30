module "client_negajjangproject-1" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "negajjangproject-1"
  valid_redirect_uris = [
    "http://localhost/"
  ]
}
