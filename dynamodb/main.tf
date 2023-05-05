resource "aws_dynamodb_table" "mytable" {
    name = "MyTable"
    hash_key = "id"

    billing_mode = var.billing_mode

    attribute {
      name = "id"
      type = "S"
    }

    tags = {
        Name ="MyTable"
        Terraform = "true"
    }
}