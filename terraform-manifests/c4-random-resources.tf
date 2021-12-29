# Random String Resource
resource "random_string" "my_random" {
    length = 6
    upper = false
    special = false
    number = false
}