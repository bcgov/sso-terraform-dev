# KEYCLOAK_DEV
variable "dev_client_id" {
  description = "The client_id for the Keycloak client in Master Realm"
  default     = ""
}

variable "dev_client_secret" {
  description = "The client_secret for the Keycloak client"
  default     = ""
}

variable "dev_username" {
  description = "The username of the user used by the provider for authentication via the password grant"
  default     = ""
}

variable "dev_password" {
  description = "The password of the user used by the provider for authentication via the password grant"
  default     = ""
}

variable "dev_keycloak_url" {
  description = "The URL of the Keycloak instance"
  default     = "https://sso-keycloak-4-b861c7-test.apps.silver.devops.gov.bc.ca"
}

# KEYCLOAK_TEST
variable "test_client_id" {
  description = "The client_id for the Keycloak client in Master Realm"
  default     = ""
}

variable "test_client_secret" {
  description = "The client_secret for the Keycloak client"
  default     = ""
}

variable "test_username" {
  description = "The username of the user used by the provider for authentication via the password grant"
  default     = ""
}

variable "test_password" {
  description = "The password of the user used by the provider for authentication via the password grant"
  default     = ""
}

variable "test_keycloak_url" {
  description = "The URL of the Keycloak instance"
  default     = "https://sso-keycloak-5-b861c7-test.apps.silver.devops.gov.bc.ca"
}

# KEYCLOAK_PROD
variable "prod_client_id" {
  description = "The client_id for the Keycloak client in Master Realm"
  default     = ""
}

variable "prod_client_secret" {
  description = "The client_secret for the Keycloak client"
  default     = ""
}

variable "prod_username" {
  description = "The username of the user used by the provider for authentication via the password grant"
  default     = ""
}

variable "prod_password" {
  description = "The password of the user used by the provider for authentication via the password grant"
  default     = ""
}

variable "prod_keycloak_url" {
  description = "The URL of the Keycloak instance"
  default     = "https://sso-keycloak-6-b861c7-test.apps.silver.devops.gov.bc.ca"
}

variable "dev_github_client_id" {
  type      = string
  sensitive = true
}

variable "dev_github_client_secret" {
  type      = string
  sensitive = true
}

variable "test_github_client_id" {
  type      = string
  sensitive = true
}

variable "test_github_client_secret" {
  type      = string
  sensitive = true
}

variable "prod_github_client_id" {
  type      = string
  sensitive = true
}

variable "prod_github_client_secret" {
  type      = string
  sensitive = true
}

variable "dev_google_client_id" {
  type      = string
  sensitive = true
}

variable "dev_google_client_secret" {
  type      = string
  sensitive = true
}

variable "test_google_client_id" {
  type      = string
  sensitive = true
}

variable "test_google_client_secret" {
  type      = string
  sensitive = true
}

variable "prod_google_client_id" {
  type      = string
  sensitive = true
}

variable "prod_google_client_secret" {
  type      = string
  sensitive = true
}

variable "dev_digitalcredential_client_id" {
  type      = string
  sensitive = true
}

variable "dev_digitalcredential_client_secret" {
  type      = string
  sensitive = true
}

variable "test_digitalcredential_client_id" {
  type      = string
  sensitive = true
}

variable "test_digitalcredential_client_secret" {
  type      = string
  sensitive = true
}

variable "prod_digitalcredential_client_id" {
  type      = string
  sensitive = true
}

variable "prod_digitalcredential_client_secret" {
  type      = string
  sensitive = true
}

variable "test_siteminder_signing_certificate" {
  type      = string
  sensitive = true
}

variable "prod_siteminder_signing_certificate" {
  type      = string
  sensitive = true
}

variable "dev_azureidir_client_id" {
  type      = string
  sensitive = true
}

variable "dev_azureidir_client_secret" {
  type      = string
  sensitive = true
}

variable "test_azureidir_client_id" {
  type      = string
  sensitive = true
}

variable "test_azureidir_client_secret" {
  type      = string
  sensitive = true
}

variable "prod_azureidir_client_id" {
  type      = string
  sensitive = true
}

variable "prod_azureidir_client_secret" {
  type      = string
  sensitive = true
}

variable "dev_microsoft_client_id" {
  type      = string
  sensitive = true
}

variable "dev_microsoft_client_secret" {
  type      = string
  sensitive = true
}

variable "test_microsoft_client_id" {
  type      = string
  sensitive = true
}

variable "test_microsoft_client_secret" {
  type      = string
  sensitive = true
}

variable "prod_microsoft_client_id" {
  type      = string
  sensitive = true
}

variable "prod_microsoft_client_secret" {
  type      = string
  sensitive = true
}

variable "dev_apple_client_id" {
  type      = string
  sensitive = true
}

variable "dev_apple_client_secret" {
  type      = string
  sensitive = true
}

variable "test_apple_client_id" {
  type      = string
  sensitive = true
}

variable "test_apple_client_secret" {
  type      = string
  sensitive = true
}

variable "prod_apple_client_id" {
  type      = string
  sensitive = true
}

variable "prod_apple_client_secret" {
  type      = string
  sensitive = true
}
