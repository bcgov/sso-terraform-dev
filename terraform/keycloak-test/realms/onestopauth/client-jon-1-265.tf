module "client_jon-1-265" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "jon-1-265"
  valid_redirect_uris = [
    "http://stackoverflow.com/questions/58579426/in-useeffect-whats-the-difference-between-providing-no-dependency-array-and-an"
  ]
}
