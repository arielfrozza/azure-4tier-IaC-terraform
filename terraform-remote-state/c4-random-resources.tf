# Random String Resource
resource "random_string" "my_random" {
    length = 3
    upper = false
    special = false
    number = false
}