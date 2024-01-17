
import SwiftUI

struct LampView: View {
  let isOn: Bool
  var color: Color
  
  var body: some View {
    
    Rectangle()
      .frame(width: LampSize.lampWidth, height: LampSize.lampHeight)
      .foregroundColor(isOn ? color : .berlinGray)
  }
}
