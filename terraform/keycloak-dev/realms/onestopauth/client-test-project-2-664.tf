module "client_test-project-2-664" {
  source      = "../../../modules/openid-client"
  realm_id    = data.keycloak_realm.this.id
  client_name = "test-project-2-664"
  valid_redirect_uris = [
    "https://ensembleca.ent.cgi.com/client/56524/adsacctdocs/Project%20Documentation/Forms/AllItems.aspx?View=%7B585E2036-92F2-4701-85BC-35DCD8967E15%7D",
    "http://test",
    "http://test",
    "http://test"
  ]
}
