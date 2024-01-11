
import XCTest
@testable import TDD_BerlinClock

class BerlinClockModelTest: XCTestCase {

  func testUpdatesecondsLamps() {
    //Arrange
    var model = BerlinClockModel()
    
    //Act
    
    let dateComponents = DateComponents(second: 45)
    
    model.updateLamps(for: dateComponents)
    //Assert
    XCTAssertEqual(model.secondsLamps, [false])
  }
}
