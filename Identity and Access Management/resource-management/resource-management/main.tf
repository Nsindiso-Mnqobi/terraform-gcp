resource "google_folder" "production_environment_folder" {
    display_name = "production"
    parent = var.parent
}

resource "google_project" "my_first_project" {
  name = "my-first-terraform-project"
  project_id = "terraform-project-6053"
  folder_id = google_folder.production_environment_folder.id
}