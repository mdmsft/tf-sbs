variable "name" {
  type        = string
  description = "The name"
}

variable "age" {
  type        = number
  description = "The age"

  validation {
    condition     = var.age >= 18
    error_message = "Must be at least 18 years old"
  }
}

variable "likes_terraform" {
  type        = bool
  default     = true
  description = "Likes Teraform?"
}

variable "sports" {
  type        = list(string)
  default     = ["jogging", "hiking"]
  description = "Favourite sports"
}

variable "half_marathons" {
  type = map(string)
  default = {
    "munich"    = "01:46:23",
    "altötting" = "01:44:22",
    "tegernsee" = "01:40:20"
  }
  description = "Last 3 half-marathons"
}

variable "info" {
  type = object({
    height    = number
    eye_color = string
    smoker    = bool
  })
  default = {
    eye_color = "blue"
    height    = 169.75
    smoker    = false
  }
  description = "Information"
}

variable "password" {
  type      = string
  sensitive = true
}
