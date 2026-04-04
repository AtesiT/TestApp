import Foundation

class Person {
    let name: String
    //  Используем var, так как если будет константой и оно примет nil, из-за чего мы не сможем передать значение нашему свойству
    var surname: String?
    let phone: String
    
    init(name: String, surname: String? = nil ,phone: String) {
        self.name = name
        self.surname = surname
        self.phone = phone
    }
}
