
import SwiftUI

struct LampView: View {
  let isOn: Bool
  
  var body: some View {
    
    Rectangle()
      .frame(width: 20, height: 20)
      .foregroundColor(isOn ? .yellow : .gray)
  }
}
