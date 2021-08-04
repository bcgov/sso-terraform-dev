module "client_mytestclientaaaa-135" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "mytestclientaaaa-135"
  valid_redirect_uris = [
    "http://localhost:1000"
  ]
}
