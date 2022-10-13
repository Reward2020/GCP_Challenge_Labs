variable "project_id" {
  description = "The ID of the project in which to provision resources."
  type        = string
  default     = "FILL IN YOUR PROJECT ID HERE"
}
variable "name" {
  description = "Name of the buckets to create."
  type        = string
  default     = "FILL IN YOUR (UNIQUE) BUCKET NAME HERE"
}
variable "instance_name1" {
  description = "Name of the instanse1 to create."
  type        = string
  default     = "tf-instance-1"
}
variable "instance_name2" {
  description = "Name of the instanse2 to create."
  type        = string
  default     = "tf-instance-2"
}
variable "gcp_region_a" {
  description = "GCP region availability zone"
  type        = string
  default     = "a"
}
 
variable "gcp_region_b" {
  description = "GCP region availability zone"
  type        = string
  default     = "b"
}
variable "gcp_region" {
  description = "GCP region"
  type        = string
  default     = "us-east1"
}
variable "instance_type" {
  description = "Type of the instance"
  type        = string
  default     = "f1-micro"
}
variable "location" {
  description = "The location of the bucket."
  type        = string
  default     = "US"
}