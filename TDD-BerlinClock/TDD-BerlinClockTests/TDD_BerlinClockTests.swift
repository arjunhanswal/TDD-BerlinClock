
import XCTest
@testable import TDD_BerlinClock

class BerlinClockModelTest: XCTestCase {

  func testUpdateSecondsLamps() {
    //Arrange
    var model = BerlinClockModel()
    
    //Act
    let dateComponents = DateComponents(second: 45)
    model.updateLamps(for: dateComponents)
    
    //Assert
    XCTAssertEqual(model.secondsLamps, [false])
  }
  
  func testUpdateTopHoursLamps() {
    //Arrange
    var model = BerlinClockModel()
    
    //Act
    let dateComponents = DateComponents(hour: 12)
    model.updateLamps(for: dateComponents)
    
    //Assert
    XCTAssertEqual(model.topHoursLamps, [true, true, false, false])
    
  }
}
