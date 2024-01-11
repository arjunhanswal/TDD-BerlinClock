
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
}
