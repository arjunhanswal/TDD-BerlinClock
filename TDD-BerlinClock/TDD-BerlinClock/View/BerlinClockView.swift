
import SwiftUI

struct BerlinClockView: View {
  @ObservedObject private var viewModel = BerlinClockViewModel()
  
  var body: some View {
    VStack(spacing: 10) {
      Text("Berlin Clock")
        .font(.title)
      Text("\(Date())")
      Text("seconds lamp")
      BerlinClockRow(lamps: $viewModel.berlinClockModel.secondsLamps)
      
      Text("Hours lamp")
      BerlinClockRow(lamps: $viewModel.berlinClockModel.topHoursLamps)
      BerlinClockRow(lamps: $viewModel.berlinClockModel.bottomHoursLamps)
      
      Text("Minutes lamp")
      BerlinClockRow(lamps: $viewModel.berlinClockModel.topMinutesLamps)
      BerlinClockRow(lamps: $viewModel.berlinClockModel.bottomMinutesLamps)
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
