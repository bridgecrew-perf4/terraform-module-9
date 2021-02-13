variable "region" {
   type = string
   default = "ap-northeast-1"
}


variable "mytags" {
   type = object({
      Author = string
      Version = number
   })
   default = {
      Author = "Gazali"
      Version = 12
   }
}
