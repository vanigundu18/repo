# Create a Google Cloud Storage Bucket Named as trees-data5432
resource "google_storage_bucket" "data" {
  name                        = "trees-data5432"
  location                    = "us-central1"
  storage_class               = "regional"
  force_destroy               = true
  uniform_bucket_level_access = true
}

# Create a folder in Google Cloud Storage Bucket 
resource "google_storage_bucket_object" "temp" {
  name    = "temp/" # folder name should end with '/'
  content = " "     # content is ignored but should be non-empty
  bucket  = google_storage_bucket.data.name
}




