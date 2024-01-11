
import Foundation

struct BerlinClockModel: Equatable {
  var secondsLamps: [Bool] = Array(repeating: false, count: 1)
  var topHoursLamps: [Bool] = Array(repeating: false, count: 4)
  var bottomHoursLamps: [Bool] = Array(repeating: false, count: 4)
  var topMinutesLamps: [Bool] = Array(repeating: false, count: 11)
  var bottomMinutesLamps: [Bool] = Array(repeating: false, count: 4)
  
  mutating func updateLamps(for time: DateComponents) {
    updateSecondsLamps(for: time.second ?? 0)
    updateTopHoursLamps(for: time.hour ?? 0)
    updateBottomHoursLamps(for: time.hour ?? 0)
    updateTopMinutesLamps(for: time.minute ?? 0)
    updateBottomMinutesLamps(for: time.minute ?? 0)
  }
  
  mutating func updateSecondsLamps(for seconds: Int) {
    let isOn = seconds % 2 == 0
    secondsLamps = [isOn]
  }
  
  mutating func updateTopHoursLamps(for hours: Int) {
    let topHours = (min(4, hours / 5))
    topHoursLamps = Array(repeating: true, count: topHours) + Array(repeating: false, count: max(0, 4 - topHours))
  }
  
  mutating func updateBottomHoursLamps(for hours: Int) {
    // Calculate the remainder when dividing hours by 5 to get the bottom hours
    let bottomHours = hours % 5
    bottomHoursLamps = Array(repeating: true, count: bottomHours) + Array(repeating: false, count: max(0, 4 - bottomHours))
  }
  
  mutating func updateTopMinutesLamps(for minutes: Int) {
    let topMinutes = minutes / 5
    topMinutesLamps = Array(repeating: true, count: topMinutes) + Array(repeating: false, count: max(0, 11 - topMinutes))
  }
  
  mutating func updateBottomMinutesLamps(for minutes: Int) {
    let bottomMinutes = minutes % 5
    bottomMinutesLamps = Array(repeating: true, count: bottomMinutes) + Array(repeating: false, count: max(0, 4 - bottomMinutes))
  }
}
