

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
    tokyo-b-test = {
      vpc  = "tokyo"
      cidr = "10.40.2.0/24"
      az   = "ap-northeast-1b"
    }
    new-york-a = {
      vpc  = "new-york"
      cidr = "10.41.1.0/24"
      az   = "us-east-1a"
    }
    new-york-b = {
      vpc  = "new-york"
      cidr = "10.41.2.0/24"
      az   = "us-east-1b"
    }
    london     = {}
    sao-paulo  = {}
    australia  = {}
    hong-kong  = {}
    california = {}
  }
}


#     - New York
#       Region: us-east-1
#       AZ: us-east-1a
#           us-east-1b
#       VPC: new-york
#       CIDR: 10.41.0.0/16
#       Subnet:
#         Private: 
#           new-york-a-private: 10.41.11.0/24
#           new-york-b-private: 10.41.12.0/24
#         Public:
#           new-york-a-public: 10.41.1.0/24
#           new-york-b-public: 10.41.2.0/24

#     - London
#       Region: eu-west-2
#       AZ: eu-west-2a
#           eu-west-2b
#       VPC: london
#       CIDR: 10.42.0.0/16
#       Subnet:
#         Private: 
#           london-a-private: 10.42.11.0/24
#           london-b-private: 10.42.12.0/24
#         Public:
#           london-a-public: 10.42.1.0/24
#           london-b-public: 10.42.2.0/24

#     - Sao Paulo
#       Region: sa-east-1
#       AZ: sa-east-1a
#           sa-east-1c
#       VPC: sao-paulo
#       CIDR: 10.43.0.0/16
#       Subnet:
#         Private: 
#           sao-paulo-a-private: 10.43.11.0/24
#           sao-paulo-b-private: 10.43.12.0/24
#         Public:
#           sao-paulo-a-public: 10.43.1.0/24
#           sao-paulo-b-public: 10.43.2.0/24

#     - Australia 
#       Region: ap-southeast-2
#       AZ: ap-southeast-2a
#           ap-southeast-2b
#       VPC: australia
#       CIDR: 10.44.0.0/16
#       Subnet:
#         Private: 
#           australia-a-private: 10.44.11.0/24
#           australia-b-private: 10.44.12.0/24
#         Public:
#           australia-a-public: 10.44.1.0/24
#           australia-b-public: 10.44.2.0/24

#     - Hong Kong
#       Region: ap-east-1
#       AZ: ap-east-1a
#           ap-east-1b
#       VPC: hong-kong
#       CIDR: 10.45.0.0/16
#       Subnet:
#         Private: 
#           hong-kong-a-private: 10.45.11.0/24
#           hong-kong-b-private: 10.45.12.0/24
#         Public:
#           hong-kong-a-public: 10.45.1.0/24
#           hong-kong-b-public: 10.45.2.0/24

#     - California.
#       Region: us-west-1
#       AZ: us-west-1a
#           us-west-1b
#       VPC: california
#       CIDR: 10.46.0.0/16
#       Subnet:
#         Private: 
#           california-a-private: 10.46.11.0/24
#           california-b-private: 10.46.12.0/24
#         Public:
#           california-a-public: 10.46.1.0/24
#           california-b-public: 10.46.2.0/24
