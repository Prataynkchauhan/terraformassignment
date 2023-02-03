//local file is created
resource"local_file" "foo2"{
    filename="file2.txt"
    content="My name is Pratyank Chauhan."
}

// locals
locals {
  my_local = "main file"
}

 
resource "random_id" "f1" {
    byte_length = 8
}
//use of locals here
resource"local_file" "foo3"{
    filename="file3.txt"
    content=local.my_local
}
// example of  random id nd locals
resource"local_file" "foo4"{
    filename="${random_id.f1.hex}"
    content=local.my_local
}
//use of string type variable here 
resource "local_file" "foo"{
    filename=var.abc
    content ="hello"
}
//use of list type variable
resource "local_file" "bar"{
filename="file4.txt"
content=var.k1[1]
}
//use of number type variable
resource"local_file" "bar2"{
    filename="file5.txt"
    content=var.k2
}
//use of map type variable 
resource "local_file" "bar3" {
  filename = var.new_map["filename"] 
  content = var.new_map["content"]
}
//use of bool type variable here
resource "local_file" "bar4" {
  filename = "file2.txt"
  content = var.k3
}