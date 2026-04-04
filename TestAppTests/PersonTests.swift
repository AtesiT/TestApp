import XCTest
@testable import TestApp

final class PersonTests: XCTestCase {
    var person: Person!
    var image: UIImage!
    var imageData: Data!
    
    override func setUp() {
        super.setUp()
        image = UIImage(systemName: "person.circle")
        imageData = image?.pngData()
        person = Person(
            name: "Foo",
            surname: "Bar",
            phone: "Baz",
            imageData: imageData
        )
    }

    override func tearDown() {
        person = nil
        super.tearDown()
    }

    func testInitInstancePersonWithNameAndPhone() {
//        XCTAssertNotNil(person)
//        Проверяем передачу данных
        XCTAssertEqual(person.name, "Foo")
        XCTAssertEqual(person.phone, "Baz")
    }
    
    func testInitInstancePersonWithFullNameAndPhone() {
        XCTAssertEqual(person.surname, "Bar")
    }

    func testInitInstancePersonWithImage() {
        XCTAssertNotNil(person.imageData)
    }
}
