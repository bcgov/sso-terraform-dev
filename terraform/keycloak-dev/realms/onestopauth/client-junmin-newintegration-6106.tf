module "client_junmin-newintegration-6106" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=dev"
  realm_id    = data.keycloak_realm.this.id
  client_id   = "junmin-newintegration-6106"
  client_name = "junmin-newintegration-6106"
  valid_redirect_uris = [
    "http://localhost:3000"
  ]
  description = "CSS App Created"
}
