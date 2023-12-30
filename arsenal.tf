resource "helm_release" "arsenal-app" {
  name       = "arsenal-app"
  namespace = "arsenal"
  chart      = "arsenal-app"
  
  values = [
    "${file("arsenal.yml")}"
  ]

}
