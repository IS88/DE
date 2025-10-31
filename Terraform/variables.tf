variable "Credentials" {
    description = "My credentials"
    default = "./credentials.json"
  
}


variable "Project" {
    description = "Project name"
    default = "de-test-476612"
  
}

variable "Region" {
    description = "Region name"
    default = "us-central1"
  
}

variable "Location" {
    description = "Project location"
    default = "US"
  
}

variable "bq_test_dataset" {
    description = "BigQuery test dataset"
    default = "test_dataset" 
}

variable "gcs_storage_test" {
    description = "Bucket storage test"
    default = "de-test-476612-terra-bucket" 
}


variable "gcs_storage_class" {
    description = "Bucket storage class"
    default = "STANDARD"
  
}