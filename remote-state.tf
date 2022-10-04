// --------------------- State --------------------

terraform {
  backend "s3" {
    bucket                      = "formation-terraform-ministere-justice-tfstates"  // change with your bucket name
    key                         = "module-2/module-10/terraform.tfstate"
    region                      = "fr-par"
    endpoint                    = "https://s3.fr-par.scw.cloud"
    skip_credentials_validation = true
    skip_region_validation      = true
  }
  required_providers {
    scaleway = {
      source  = "scaleway/scaleway"
    }
  }
  required_version = ">= 1.0"
}

