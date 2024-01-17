
import SwiftUI

struct BerlinTopMinutesRow: View {
  @Binding var lamps: [Bool]
  var lampColor: LampColor
  
  var body: some View {
    HStack(spacing: 5) {
      ForEach(0..<lamps.count) { index in
        LampView(isOn: self.lamps[index], color:  self.lapColor(index: index))
      }
    }
  }
  
  func lapColor(index: Int) -> Color {
    ((index + 1 ) % 3 == 0 ? Color.red : Color.yellow)
  }
}
