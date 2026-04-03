import XCTest

final class SoundBarTests: XCTestCase {
    //  TODO: - Здесь создаются экземпляры SoundBar
    
    var items: [String] = []

    override func setUp() {
        super.setUp()
        //  Здесь происходит инициализация экземпляров SoundBar
    }

    override func tearDown() {
        //  Здесь происходит выгрузка из памяти, присваивание nil
        
        //  Вызываем метод super.tearDown() в конце
        super.tearDown()
    }
    
    //  Необходимо начинать название метода с test
    func testExample() throws {
        //  Тестовый тест
    }

    //  Метод для проверки производительности алгоритма
    func testPerformanceExample() {
        measure {
//             getItems()
            getMoreItems()
        }
    }
    
    private func getItems() {
        let numbers = 1...1000000
        
        for number in numbers {
            let item = "Item: \(number)"
            items.append(item)
        }
    }
    
    private func getMoreItems() {
        items = (1...1000000).map {"Item: \($0)"}
    }
}
