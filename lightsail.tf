resource "aws_lightsail_instance" "test" {
  name              = "custom_instance"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_1_0"
  add_on {
    type          = "AutoSnapshot"
    snapshot_time = "06:00"
    status        = "Enabled"
  }
  tags = {
    env = "Dev"
  }
}


resource "aws_lightsail_instance" "example" {
  name              = "my-lightsail-instance"
  availability_zone = "us-east-1a" # Set your desired availability zone

  blueprint_id = "amazon_linux_2" # Choose the blueprint ID that suits your needs

  bundle_id = "micro_2_0" # Choose the Lightsail bundle ID that suits your needs

  user_data = <<-EOF
    #!/bin/bash
    echo "Hello from user data script!"
    # You can add more commands or configuration here
  EOF

  key_pair_name = "my-key-pair" # Replace with your SSH key pair name

  tags = {
    "Environment" = "Development"
  }
}
