terraform {
  backend "gcs" {
    bucket = "devops-directive-storybooks-terraform"
    prefix = "/state/storybooks"
  }

  required_providers {
    google = {
      version     = "~> 3.38"
    }

    cloudflare = {
      source    = "cloudflare/cloudflare"
      version   = "~> 2.0"
      
    }

    mongodbatlas = {
      source      = "mongodb/mongodbatlas"
      version     = "~> 0.6"
    }
  }
}
