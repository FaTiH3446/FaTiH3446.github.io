import SwiftUI

struct ContentView: View {
    @State var hour = 10
    @State var minuteSeg = 0
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(Color.red)
                    .frame(width: 220, height: 220)
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 170, height: 170)
                
                Circle()
                    .fill(Color.red)
                    .frame(width: 120, height: 120)
                
                Circle()
                    .fill(Color.blue)
                    .frame(width: 70, height: 70)
                
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                
                Rectangle()
                    .frame(width: 4, height: 90)
                    .foregroundColor(.white)
                    .offset(y: -45)
                    .rotationEffect(.degrees(minuteAngle(for: minuteSeg)))
                
                Rectangle()
                    .frame(width: 6, height: 60)
                    .foregroundColor(.white)
                    .offset(y: -30)
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 14, height: 14)
            }
            .onTapGesture {
                minuteSeg += 1
                if minuteSeg == 4 {
                    minuteSeg = 0
                    hour += 1
                }
                if hour == 24 {
                    hour = 0
                }
            }
            .padding()
            
            Text("\(hour):00")
                .font(.title)
                .bold()
                .foregroundColor(.primary)
        }
    }
    
    func minuteAngle(for segment: Int) -> Double {
        switch segment {
        case 0: return 0
        case 1: return 90
        case 2: return 180
        case 3: return 270
        default: return 0
        }
    }
}

