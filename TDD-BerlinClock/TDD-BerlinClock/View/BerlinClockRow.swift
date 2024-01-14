
import SwiftUI

struct BerlinClockRow: View {
  @Binding var lamps: [Bool]
  
  var body: some View {
    HStack(spacing: 5) {
      ForEach(0..<lamps.count) { index in
        LampView(isOn: self.lamps[index])
      }
    }
  }
}

