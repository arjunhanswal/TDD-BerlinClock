
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
        BerlinClockRow(lamps: $viewModel.berlinClockModel.secondsLamps, color: .berlinYellow)
        
        Text("Hours lamp")
        BerlinClockRow(lamps: $viewModel.berlinClockModel.topHoursLamps, color: .berlinRed)
        BerlinClockRow(lamps: $viewModel.berlinClockModel.bottomHoursLamps, color: .berlinRed)
        
        Text("Minutes lamp")
        BerlinTopMinutesRow(lamps: $viewModel.berlinClockModel.topMinutesLamps, lampColor: .berlinRed)
        BerlinClockRow(lamps: $viewModel.berlinClockModel.bottomMinutesLamps, color: .berlinYellow)
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
