import SwiftUI

struct ContentView: View {
    let grid = 10
    
    var body: some View {
        HStack(spacing: 60) {
            letterGrid(title: "F", isFirst: true)
            letterGrid(title: "E", isFirst: false)
        }
        .padding()
        .background(Color.black)
    }
    
    func letterGrid(title: String, isFirst: Bool) -> some View {
        VStack(spacing: 6) {
            Text(title)
                .font(.title)
                .foregroundColor(.white)
            
            ForEach(0..<grid, id: \.self) { row in
                HStack(spacing: 6) {
                    ForEach(0..<grid, id: \.self) { col in
                        Circle()
                            .fill(
                                isFirst
                                ? colorF(row, col)
                                : colorE(row, col)
                            )
                            .frame(width: 14, height: 14)
                    }
                }
            }
        }
    }
    
 
    func colorF(_ r: Int, _ c: Int) -> Color {
        let leftBar     = (c == 1 && r >= 1 && r <= 8)
        let topBar      = (r == 1 && c >= 1 && c <= 8)
        let midBar      = (r == 4 && c >= 1 && c <= 6)
        
        if leftBar || topBar || midBar {
            return .green
        }
        return Color.gray.opacity(0.18)
    }
    
   
    func colorE(_ r: Int, _ c: Int) -> Color {
        let leftBar     = (c == 1 && r >= 1 && r <= 8)
        let topBar      = (r == 1 && c >= 1 && c <= 8)
        let midBar      = (r == 4 && c >= 1 && c <= 7)
        let bottomBar   = (r == 8 && c >= 1 && c <= 8)
        
        if leftBar || topBar || midBar || bottomBar {
            return .orange
        }
        return Color.gray.opacity(0.18)
    }
}

#Preview {
    ContentView()
}

