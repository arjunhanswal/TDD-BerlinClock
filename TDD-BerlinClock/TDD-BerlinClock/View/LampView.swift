
import SwiftUI

struct LampView: View {
  let isOn: Bool
  var color: Color
  
  var body: some View {
    
    Rectangle()
      .frame(width: 30, height: 30)
      .foregroundColor(isOn ? color : .gray)
  }
}
