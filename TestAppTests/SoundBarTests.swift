import XCTest
@testable import TestApp

final class SoundBarTests: XCTestCase {
    //  TODO: - Здесь создаются экземпляры SoundBar
    //  System Under Test (Система, которая тестируется)
    var sut: SoundBar!
    
    var items: [String] = []

    override func setUp() {
        super.setUp()
        sut = SoundBar()
        //  Здесь происходит инициализация экземпляров SoundBar
    }

    override func tearDown() {
        //  Здесь происходит выгрузка из памяти, присваивание nil
        sut = nil
        //  Вызываем метод super.tearDown() в конце
        super.tearDown()
    }
    
    //  Необходимо начинать название метода с test
    func testSetVolumeShouldBeReturned0WhenLowestVolume() {
        //  Тело теста делится на 3 логических блока
        
        //  1-ый блок - Что дано?
        sut.setVolume(to: -1)
        //  2-ой блок - Что произошло?
        let volume = sut.volume
        //  3-ой блок - Что должно получится?
        XCTAssert(volume == 0, "Lowest volume should be equal zero")
    }
    
    func testSetVolumeShouldBeReturned100WhenHighestVolume() {
        sut.setVolume(to: 101)
        XCTAssert(sut.volume == 100, "Highest volume should be equal one hundred")
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
