
import Foundation

struct BerlinClockModel {
  var secondsLamps: [Bool] = Array(repeating: false, count: 1)
  
  mutating func updateLamps(for time: DateComponents) {
    updateSecondsLamps(for: time.second ?? 0)
  }
  
  mutating func updateSecondsLamps(for seconds: Int) {
    let isOn = seconds % 2 == 0
    secondsLamps = [isOn]
  }
}
