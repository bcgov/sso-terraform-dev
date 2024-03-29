variable "client_id" {
  description = "The client_id for the Keycloak client in Master Realm"
  default     = "admin-cli"
}

variable "username" {
  description = "The username of the user used by the provider for authentication via the password grant"
  default     = ""
  sensitive   = true
}

variable "password" {
  description = "The password of the user used by the provider for authentication via the password grant"
  default     = ""
  sensitive   = true
}

variable "keycloak_url" {
  description = "The URL of the Keycloak instance"
  default     = "http://localhost:8080"
}
