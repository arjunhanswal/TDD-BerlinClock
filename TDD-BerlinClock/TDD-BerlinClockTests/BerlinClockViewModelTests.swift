
import XCTest
@testable import TDD_BerlinClock

class BerlinClockViewModelTests: XCTestCase {

  func testViewModelInitialization() {
    // Arrange & Act
    let viewModel = BerlinClockViewModel()
    
    // Assert
    XCTAssertNotNil(viewModel)
    XCTAssertNotNil(viewModel.berlinClockModel)
  }
  
  func testViewModelUpdatesLamps() {
    // Arrange
    let viewModel = BerlinClockViewModel()
    let initialLampsState = viewModel.berlinClockModel
    
    // Act
    viewModel.startClock()
    
    let expectation = XCTestExpectation(description: "Wait for timer to trigger")
    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
      expectation.fulfill()
    }
    wait(for: [expectation], timeout: 5)
    
    // Assert
    XCTAssertNotEqual(viewModel.berlinClockModel, initialLampsState)
  }
}
