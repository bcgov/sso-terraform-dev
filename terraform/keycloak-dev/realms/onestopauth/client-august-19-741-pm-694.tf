module "client_august-19-741-pm-694" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_name = "august-19-741-pm-694"
  valid_redirect_uris = [
    "https://www.google.ca"
  ]
}
