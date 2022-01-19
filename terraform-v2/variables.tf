# KEYCLOAK_DEV
variable "dev_client_id" {
  description = "The client_id for the Keycloak client in Master Realm"
  default     = "terraform-cli"
}

variable "dev_client_secret" {
  description = "The client_secret for the Keycloak client"
  default     = "<dev_client_secret>"
}

variable "dev_username" {
  description = "The username of the user used by the provider for authentication via the password grant"
  default     = "<dev_username>"
}

variable "dev_password" {
  description = "The password of the user used by the provider for authentication via the password grant"
  default     = "<dev_password>"
}

variable "dev_keycloak_url" {
  description = "The URL of the Keycloak instance"
  default     = "https://dev.loginproxy.gov.bc.ca"
}

# KEYCLOAK_TEST
variable "test_client_id" {
  description = "The client_id for the Keycloak client in Master Realm"
  default     = "terraform-cli"
}

variable "test_client_secret" {
  description = "The client_secret for the Keycloak client"
  default     = "<test_client_secret>"
}

variable "test_username" {
  description = "The username of the user used by the provider for authentication via the password grant"
  default     = "<test_username>"
}

variable "test_password" {
  description = "The password of the user used by the provider for authentication via the password grant"
  default     = "<test_password>"
}

variable "test_keycloak_url" {
  description = "The URL of the Keycloak instance"
  default     = "https://test.loginproxy.gov.bc.ca"
}

# KEYCLOAK_PROD
variable "prod_client_id" {
  description = "The client_id for the Keycloak client in Master Realm"
  default     = "terraform-cli"
}

variable "prod_client_secret" {
  description = "The client_secret for the Keycloak client"
  default     = "<prod_client_secret>"
}

variable "prod_username" {
  description = "The username of the user used by the provider for authentication via the password grant"
  default     = "<prod_username>"
}

variable "prod_password" {
  description = "The password of the user used by the provider for authentication via the password grant"
  default     = "<prod_password>"
}

variable "prod_keycloak_url" {
  description = "The URL of the Keycloak instance"
  default     = "https://loginproxy.gov.bc.ca"
}
