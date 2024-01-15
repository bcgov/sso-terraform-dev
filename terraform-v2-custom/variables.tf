# KEYCLOAK_DEV
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
