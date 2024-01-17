
import Foundation

import SwiftUI

// Colors
extension Color {
  static let berlinYellow = Color.yellow
  static let berlinRed = Color.red
  static let berlinGray = Color.gray
}

// Lamp Sizes
enum LampSize {
  static let lampWidth: CGFloat = 20
  static let lampHeight: CGFloat = 20
}

// Berlin Clock Rows
struct BerlinClockConstants {
  static let secondsLampsCount = 1
  static let topHoursLampsCount = 4
  static let bottomHoursLampsCount = 4
  static let topMinutesLampsCount = 11
  static let bottomMinutesLampsCount = 4
}

// Berlin Clock Lamp Colors
enum BerlinClockLampColors {
  static let topHoursColor: Color = .berlinRed
  static let bottomHoursColor: Color = .berlinRed
  static let topMinutesColor: Color = .berlinYellow
  static let bottomMinutesColor: Color = .berlinYellow
}
