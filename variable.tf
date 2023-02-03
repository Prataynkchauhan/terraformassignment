//string type
variable "abc"{
    type=string
    description="enter file name"
    default="pratyank.txt"
}
//list type
variable "k1"{
    type=list

}
//number type
variable "k2"{
type=number
default=123456789
}
//map type
variable "new_map" {
  type = map(string)
}
// bool type
variable "k3"{
 type=bool
default = false
}
//object type
variable square{
    type = object({
        s_one=number, 
        s_two=number,
        s_three=number,
        s_four=number, 
        description=string
        })
}