module "client_jumintestclientclient-36" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "jumintestclientclient-36"
  valid_redirect_uris = [
    "http://localhost:3000",
    "http://localhost:3001"
  ]
}
