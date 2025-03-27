module "keycloak_dev" {
  source = "./keycloak-dev"

  keycloak_url                    = var.dev_keycloak_url
  username                        = var.dev_username
  password                        = var.dev_password
  siteminder_signing_certificate  = var.test_siteminder_signing_certificate
  azureidir_tenant_id             = ""
  azureidir_client_id             = var.dev_azureidir_client_id
  azureidir_client_secret         = var.dev_azureidir_client_secret
  github_client_id                = var.dev_github_client_id
  github_client_secret            = var.dev_github_client_secret
  digitalcredential_client_id     = var.dev_digitalcredential_client_id
  digitalcredential_client_secret = var.dev_digitalcredential_client_secret
  google_client_id                = var.dev_google_client_id
  google_client_secret            = var.dev_google_client_secret
  microsoft_client_id             = var.dev_microsoft_client_id
  microsoft_client_secret         = var.dev_microsoft_client_secret
  apple_client_id                 = var.dev_apple_client_id
  apple_client_secret             = var.dev_apple_client_secret
  microsoft_tenant_id             = "common"
}

module "keycloak_test" {
  source = "./keycloak-test"

  keycloak_url                    = var.test_keycloak_url
  username                        = var.test_username
  password                        = var.test_password
  siteminder_signing_certificate  = var.test_siteminder_signing_certificate
  azureidir_tenant_id             = ""
  azureidir_client_id             = var.test_azureidir_client_id
  azureidir_client_secret         = var.test_azureidir_client_secret
  github_client_id                = var.test_github_client_id
  github_client_secret            = var.test_github_client_secret
  digitalcredential_client_id     = var.test_digitalcredential_client_id
  digitalcredential_client_secret = var.test_digitalcredential_client_secret
  google_client_id                = var.test_google_client_id
  google_client_secret            = var.test_google_client_secret
  microsoft_client_id             = var.test_microsoft_client_id
  microsoft_client_secret         = var.test_microsoft_client_secret
  apple_client_id                 = var.test_apple_client_id
  apple_client_secret             = var.test_apple_client_secret
  microsoft_tenant_id             = "common"
}

module "keycloak_prod" {
  source = "./keycloak-prod"

  keycloak_url                    = var.prod_keycloak_url
  username                        = var.prod_username
  password                        = var.prod_password
  siteminder_signing_certificate  = var.prod_siteminder_signing_certificate
  azureidir_tenant_id             = ""
  azureidir_client_id             = var.prod_azureidir_client_id
  azureidir_client_secret         = var.prod_azureidir_client_secret
  github_client_id                = var.prod_github_client_id
  github_client_secret            = var.prod_github_client_secret
  digitalcredential_client_id     = var.prod_digitalcredential_client_id
  digitalcredential_client_secret = var.prod_digitalcredential_client_secret
  google_client_id                = var.prod_google_client_id
  google_client_secret            = var.prod_google_client_secret
  microsoft_client_id             = var.prod_microsoft_client_id
  microsoft_client_secret         = var.prod_microsoft_client_secret
  apple_client_id                 = var.prod_apple_client_id
  apple_client_secret             = var.prod_apple_client_secret
  microsoft_tenant_id             = "common"
}
