variable "tenant" {
  description = "BGP Peer Prefix Policy's Tenant name."
  type        = string

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,64}$", var.tenant))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 64."
  }
}

variable "name" {
  description = "BGP Peer Prefix Policy name."
  type        = string

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,64}$", var.name))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 64."
  }
}


variable "description" {
  description = "BGP Peer Prefix Policy description."
  type        = string
  default     = ""

  validation {
    condition     = can(regex("^[a-zA-Z0-9\\!#$%()*,-./:;@ _{|}~?&+]{0,128}$", var.description))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `\\`, `!`, `#`, `$`, `%`, `(`, `)`, `*`, `,`, `-`, `.`, `/`, `:`, `;`, `@`, ` `, `_`, `{`, `|`, }`, `~`, `?`, `&`, `+`. Maximum characters: 128."
  }
}

variable "action" {
  description = "BGP Peer Prefix Policy action. Valid values are `reject`, `log`, `restart` or `shut`."
  type        = string
  default     = "reject"

  validation {
    condition     = contains(["reject", "log", "shut", "restart"], var.action)
    error_message = "Valid values are `reject`, `log`, `restart` or `shut`."
  }
}

variable "max_prefixes" {
  description = "BGP Peer Prefix Policy Maximun number of Prefixes. Allowed values: 1-300000.."
  type        = number
  default     = 20000

  validation {
    condition     = var.max_prefixes >= 1 && var.max_prefixes <= 300000
    error_message = "Allowed values: 1-300000."
  }
}

variable "restart_time" {
  description = "BGP Peer Prefix Policy Restart Time. Allowed values are `infinite` or a number between 1 and 65535."
  type        = string
  default     = "infinite"

  validation {
    condition     = var.restart_time == "infinite" || try(tonumber(var.restart_time) >= 1 && tonumber(var.restart_time) <= 65535, false)
    error_message = "Allowed values are `infinite` or a number between 1 and 65535."
  }
}


variable "threshold" {
  description = "BGP Peer Prefix Policy Threshold. Allowed values: 1 and 100."
  type        = number
  default     = 75

  validation {
    condition     = var.threshold >= 1 && var.threshold <= 100
    error_message = "Allowed values: 1 and 100."
  }
}