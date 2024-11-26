variable "setup" {
  type = map(string)
  default = {
    tokyo      = "ap-northeast-1"
    new-york   = "us-east-1"
    london     = "eu-west-2"
    sao-paulo  = "sa-east-1"
    australia  = "ap-southeast-2"
    hong-kong  = "ap-east-1"
    california = "us-west-1"
  }
}

variable "vpcs" {
  type = map(map(string))
  default = {
    tokyo = {
      region = "ap-northeast-1"
      cidr   = "10.40.0.0/16"
    }
    tokyo-test = {
      region = "ap-northeast-1"
      cidr   = "10.47.0.0/16"
    }
    new-york = {
      region = "us-east-1"
      cidr   = "10.41.0.0/16"
    }
    london = {
      region = "eu-west-2"
      cidr   = "10.42.0.0/16"
    }
    sao-paulo = {
      region = "sa-east-1"
      cidr   = "10.43.0.0/16"
    }
    australia = {
      region = "ap-southeast-2"
      cidr   = "10.44.0.0/16"
    }
    hong-kong = {
      region = "ap-east-1"
      cidr   = "10.45.0.0/16"
    }
    california = {
      region = "us-west-1"
      cidr   = "10.46.0.0/16"
    }
  }
}

variable "subnets" {
  type = map(map(string))
  default = {
    tokyo-a-public = {
      vpc  = "tokyo"
      cidr = "10.40.1.0/24"
      az   = "ap-northeast-1a"
    }
    tokyo-d-public = {
      vpc  = "tokyo"
      cidr = "10.40.4.0/24"
      az   = "ap-northeast-1d"
    }
    tokyo-a-private = {
      vpc  = "tokyo"
      cidr = "10.40.11.0/24"
      az   = "ap-northeast-1a"
    }
    tokyo-d-private = {
      vpc  = "tokyo"
      cidr = "10.40.14.0/24"
      az   = "ap-northeast-1b"
    }
    tokyo-b-test-public = {
      vpc  = "tokyo-test"
      cidr = "10.40.2.0/24"
      az   = "ap-northeast-1b"
    }

    tokyo-b-test-private = {
      vpc  = "tokyo-test"
      cidr = "10.40.12.0/24"
      az   = "ap-northeast-1b"
    }

    new-york-a-public = {
      vpc  = "new-york"
      cidr = "10.41.1.0/24"
      az   = "us-east-1a"
    }
    new-york-b-public = {
      vpc  = "new-york"
      cidr = "10.41.2.0/24"
      az   = "us-east-1b"
    }
    new-york-a-private = {
      vpc  = "new-york"
      cidr = "10.41.11.0/24"
      az   = "us-east-1a"
    }
    new-york-b-private = {
      vpc  = "new-york"
      cidr = "10.41.12.0/24"
      az   = "us-east-1b"
    }

    london-a-public = {
      vpc  = "london"
      cidr = "10.42.1.0/24"
      az   = "eu-west-2a"
    }
    london-b-public = {
      vpc  = "london"
      cidr = "10.42.2.0/24"
      az   = "eu-west-2b"
    }
    london-a-private = {
      vpc  = "london"
      cidr = "10.42.11.0/24"
      az   = "eu-west-2a"
    }
    london-b-private = {
      vpc  = "london"
      cidr = "10.42.12.0/24"
      az   = "eu-west-2b"
    }
    sao-paulo-a-public = {
      vpc  = "sao-paulo"
      cidr = "10.43.1.0/24"
      az   = "sa-east-1a"
    }
    sao-paulo-c-public = {
      vpc  = "sao-paulo"
      cidr = "10.43.3.0/24"
      az   = "sa-east-1c"
    }
    sao-paulo-a-private = {
      vpc  = "sao-paulo"
      cidr = "10.43.11.0/24"
      az   = "sa-east-1a"
    }
    sao-paulo-c-private = {
      vpc  = "sao-paulo"
      cidr = "10.43.13.0/24"
      az   = "sa-east-1c"
    }
    australia-a-public = {
      vpc  = "australia"
      cidr = "10.44.1.0/24"
      az   = "ap-southeast-2a"
    }
    australia-b-public = {
      vpc  = "australia"
      cidr = "10.44.2.0/24"
      az   = "ap-southeast-2b"
    }
    australia-a-private = {
      vpc  = "australia"
      cidr = "10.44.11.0/24"
      az   = "ap-southeast-2a"
    }
    australia-b-private = {
      vpc  = "australia"
      cidr = "10.44.12.0/24"
      az   = "ap-southeast-2b"
    }
    hong-kong-a-public = {
      vpc  = "hong-kong"
      cidr = "10.45.1.0/24"
      az   = "ap-east-1a"
    }
    hong-kong-b-public = {
      vpc  = "hong-kong"
      cidr = "10.45.2.0/24"
      az   = "ap-east-1b"
    }
    hong-kong-a-private = {
      vpc  = "hong-kong"
      cidr = "10.45.11.0/24"
      az   = "ap-east-1a"
    }
    hong-kong-b-private = {
      vpc  = "hong-kong"
      cidr = "10.45.12.0/24"
      az   = "ap-east-1b"
    }
    california-a-public = {
      vpc  = "california"
      cidr = "10.46.1.0/24"
      az   = "us-west-1a"
    }
    california-b-public = {
      vpc  = "california"
      cidr = "10.46.2.0/24"
      az   = "us-west-1b"
    }
    california-a-private = {
      vpc  = "california"
      cidr = "10.46.11.0/24"
      az   = "us-west-1a"
    }
    california-b-private = {
      vpc  = "california"
      cidr = "10.46.12.0/24"
      az   = "us-west-1b"
    }
  }
}

#
