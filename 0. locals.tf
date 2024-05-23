locals {
  ec2 = {
    "trns-test1" = { #1
      instance_type = "t2.micro"
      ami           = data.aws_ami.latest_amz_linux.id
      ebs_volumes = {
        "vol1" = {
          device_name = "/dev/sdh"
          size        = "50"
          type        = "io2"
          iops        = "5000"
        }
      }
    }
    "trns-test2" = { #2
      instance_type = "t2.micro"
      ami           = data.aws_ami.latest_amz_windows2019srv.id
      ebs_volumes = {
        "vol1" = {
          device_name = "/dev/sdh"
          size        = "50"
          type        = "io2"
          iops        = "5000"
        }
        "vol2" = {
          device_name = "/dev/sdf"
          size        = "100"
          type        = "io2"
          iops        = "5000"
        }
        "vol3" = {
          device_name = "/dev/sdm"
          size        = "75"
          type        = "gp3"
        }
      }
    }
  }
}