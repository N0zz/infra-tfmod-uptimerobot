terraform {
  required_version = ">= 1.5.3"

  required_providers {
    uptimerobot = {
      source  = "vexxhost/uptimerobot"
       version = "0.8.2"
    }
  }
}