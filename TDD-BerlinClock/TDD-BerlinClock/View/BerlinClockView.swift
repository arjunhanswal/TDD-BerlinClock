
import SwiftUI

struct BerlinClockView: View {
  @ObservedObject private var viewModel = BerlinClockViewModel()
  
  var body: some View {
    VStack(spacing: 10) {
      VStack(spacing: 10) {
        Text("Berlin Clock")
          .font(.title)
        Text("\(Date())")
        Text("seconds lamp")
        BerlinClockRow(lamps: $viewModel.berlinClockModel.secondsLamps, color: Color.yellow)
        
        Text("Hours lamp")
        BerlinClockRow(lamps: $viewModel.berlinClockModel.topHoursLamps, color: .red)
        BerlinClockRow(lamps: $viewModel.berlinClockModel.bottomHoursLamps, color: .red)
        
        Text("Minutes lamp")
        BerlinTopMinutesRow(lamps: $viewModel.berlinClockModel.topMinutesLamps, lampColor: .red)
        BerlinClockRow(lamps: $viewModel.berlinClockModel.bottomMinutesLamps, color: .yellow)
      }
      .padding()
    }
    .padding()
    .onAppear {
      self.viewModel.startClock()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BerlinClockView()
    }
}
