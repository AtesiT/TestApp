import Foundation

class Person {
    let name: String
    //  Используем var, так как если будет константой и оно примет nil, из-за чего мы не сможем передать значение нашему свойству
    var surname: String?
    let phone: String
    var imageData: Data?
    
    init(name: String, surname: String? = nil ,phone: String, imageData: Data? = nil) {
        self.name = name
        self.surname = surname
        self.phone = phone
        self.imageData = imageData
    }
}
