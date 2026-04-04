import XCTest

final class CheckUITests: XCTestCase {

    override func setUp() {
        //  Если один из тестов получит ошибку, то продолжаться не будет
        continueAfterFailure = false
    }
    
    override func tearDown() {
        
    }
    
    func testExample() {
        //  Создаётся экземпляр приложения, чтобы затем запустить симулятор
        let app = XCUIApplication()
        app.launch()
        app.activate()
        
        app.textFields.firstMatch.tap()
        app.textFields.firstMatch.typeText("Hello")

        //  Если нажать сюда, а затем на "Record", то последовательность действий будет фиксироваться (при нажатии на различные элементы интерфейса в приложении)
        XCTAssertTrue(app.staticTexts["Hello"].exists)
    }
}
