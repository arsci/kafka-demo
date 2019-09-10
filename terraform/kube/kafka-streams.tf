resource "kubernetes_pod" "kafka-streams" {
  metadata {
    name = "kafka-streams"
    namespace = "kafka"
  }

  spec {
    container {
      image = "kafka-streams"
      image_pull_policy = "IfNotPresent"
      name  = "kafka-streams-1"
    }
  }
}