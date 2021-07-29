module "client_mytestprojectname-133" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "mytestprojectname-133"
  valid_redirect_uris = [
    "http://localhost:3000"
  ]
}
