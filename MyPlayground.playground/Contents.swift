import UIKit

var greeting = "Hello, playground"

func sum (a:Int, b:Int) {
   print (a+b)
    
}

sum (a: 1, b: 1)

//func sumOptional (a:Int? = nil) {
    //print (a!)
//}



func sumOptional (a:Int? = nil) {
    if let aNotOptional = a {
        print (aNotOptional)
    }
}
sumOptional (a:345)

//a! = nil ? true : false

struct User {
    var name, address: String
    var age: Int
}
// var arrayUser : [User]
var arrayUser = [User] ()

arrayUser.append (User(name:"Anna", address: "Tver", age:15))
arrayUser.append (User(name:"Oleg", address: "Moskva", age:16))



print (arrayUser.count)

for _ in arrayUser {
    //print(user.name)
    print (arrayUser[1].name)
}

class UserClass {
    //public
    var arrayUser = [User] ()
    
    init() {
        setUser ()
    }
    
    private func setUser () {
        arrayUser.append (User(name:"Anna", address: "Tver", age:15))
        arrayUser.append (User(name:"Oleg", address: "Moskva", age:16))    }
    
    func getAdress  () {
        for user in self.arrayUser {
            print (user.address)
        }
    }
}
let users = UserClass ()
users.getAdress()

