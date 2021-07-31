module "foo" {
  source = "git@github.com:yuya-takeyama/terraform-module-foo.git?ref=v0.3.1"

  cnt = 1
  triggers = {
    foo = "FOO"
  }
}

module "bar" {
  source = "git@github.com:yuya-takeyama/terraform-module-bar.git?ref=v0.2.0"

  keepers = {
    bar = "BAR"
  }
}

module "baz" {
  source = "git@github.com:yuya-takeyama/terraform-module-baz.git?ref=v0.2.0"

  cnt = 3
  triggers = {
    baz = "BAZ"
  }
}
