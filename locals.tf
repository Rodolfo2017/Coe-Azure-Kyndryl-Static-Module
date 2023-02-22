locals {
  tags = { "Project" : "${var.project}",
            "ENV" : "${var.env}",
            "Impact" : "Alto"
  }
}
