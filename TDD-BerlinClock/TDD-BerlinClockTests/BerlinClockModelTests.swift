
import XCTest
@testable import TDD_BerlinClock

class BerlinClockModelTests: XCTestCase {
   
  var model: BerlinClockModel!
  
  override func setUp() {
    super.setUp()
    model = BerlinClockModel()
  }
  
  func testUpdateSecondsLamps() {
    //Act
    let dateComponents = DateComponents(second: 45)
    model.updateLamps(for: dateComponents)
    
    //Assert
    XCTAssertEqual(model.secondsLamps, [false])
  }
  
  func testUpdateTopHoursLamps() {
    //Act
    let dateComponents = DateComponents(hour: 12)
    model.updateLamps(for: dateComponents)
    
    //Assert
    XCTAssertEqual(model.topHoursLamps, [true, true, false, false])
    
  }
  
  func testUpdateBottomHoursLamps() {
    //Act
    let dateComponents = DateComponents(hour: 16)
    model.updateLamps(for: dateComponents)
    
    //Assert
    XCTAssertEqual(model.bottomHoursLamps, [true, false, false, false])
  }
  
  func testUpdateTopMinuteLamps() {
    //Act
    let dateComponents = DateComponents(minute: 34)
    model.updateLamps(for: dateComponents)
    
    //Assert
    XCTAssertEqual(model.topMinutesLamps, [true, true, true, true, true, true, false, false, false, false, false])
  }
  
  func testUpdateBottomMinuteLamps() {
    //Act
    let dateComponents = DateComponents(minute: 46)
    model.updateLamps(for: dateComponents)
    
    //Assert
    XCTAssertEqual(model.bottomMinutesLamps, [true, false, false, false])
  }
  
  override func tearDown() {
    model = nil
    super.tearDown()
  }
}
