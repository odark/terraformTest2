terraform {
    backend "remote" {
        organization = "odarkTeraTest"
        workspaces {
            name = "terraformTest"
        }
    }
}