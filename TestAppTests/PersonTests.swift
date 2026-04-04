import XCTest
@testable import TestApp

final class PersonTests: XCTestCase {
    var person: Person!
    
    override func setUp() {
        super.setUp()
        person = Person(
            name: "Foo",
            surname: "Bar",
            phone: "Baz"
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

    
}
