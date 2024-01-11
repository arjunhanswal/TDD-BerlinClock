
import Foundation

struct BerlinClockModel {
  var secondsLamps: [Bool] = Array(repeating: false, count: 1)
  var topHoursLamps: [Bool] = Array(repeating: false, count: 4)
  
  mutating func updateLamps(for time: DateComponents) {
    updateSecondsLamps(for: time.second ?? 0)
    updateTopHoursLamps(for: time.hour ?? 0)
  }
  
  mutating func updateSecondsLamps(for seconds: Int) {
    let isOn = seconds % 2 == 0
    secondsLamps = [isOn]
  }
  
  mutating func updateTopHoursLamps(for hours: Int) {
    let topHours = (min(4, hours / 5))
    var updatedTopHoursLamps: [Bool] = []
    
    for _ in 0..<topHours {
      updatedTopHoursLamps.append(true)
    }
    
    for _ in 0..<(4 - topHours) {
      updatedTopHoursLamps.append(false)
    }
    
    // Assign the updated array to the property
    topHoursLamps = updatedTopHoursLamps
  }
}
