variable "critical_escalation_group" {
  default = "@pagerduty_HODummy"
}
variable "warning_escalation_group" {
  default = "@pagerduty_HNODummy"
}

variable "datadog_app_key" {}
variable "datadog_api_key" {}

variable "dd_linux_basics" {
  default = "enabled"
}

variable "dd_custom_cpu" {
  type = "map"
  default = {
    status = "enabled"
    name   = "CPU High > 95% during 1 hour"

    period = "last_1h"

    critical_threshold = 95
    warning_threshold  = 90
  }
}
