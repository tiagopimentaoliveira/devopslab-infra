resource "google_app_engine_application" "app" {
  project     = "lab-devops-cloud-354223"
  location_id = "us-central"
}

resource "google_artifact_registry_repository" "my-repo" {
  provider = google-beta

  location = "us-central1"
  repository_id = "lab-devops-cloud-354223"
  description = "Imagens Docker"
  format = "DOCKER"
}