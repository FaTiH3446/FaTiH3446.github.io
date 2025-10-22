---
layout: default
title: Projects
permalink: /project
---

Here are some projects. I’ll add repos, screenshots, and write-ups.


Self portrait
[My App copy 28.swiftpm.zip](https://github.com/user-attachments/files/23064071/My.App.copy.28.swiftpm.zip)

Calculator On swift

[My App copy 10.swiftpm.zip](https://github.com/user-attachments/files/23064103/My.App.copy.10.swiftpm.zip)





### Scratch Project[Scratch Project.html](https://github.com/user-attachments/files/23063186/Scratch.Project.html)

- **What I built:** 
- **What I learned:** - How to use **if–else conditions** to check the winner.  
- The importance of using **variables and lists** to keep track of turns (X or O).  
- How to make the game **interactive** with clicks and costumes.  
- The basics of **algorithmic thinking**, because I had to plan out all winning possibilities.  

This project helped me improve both my problem-solving skills and my ability to organize Scratch blocks efficiently.

import SwiftUI

@main
struct TicTacToeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var board: [String] = Array(repeating: "", count: 9)
    @State private var currentPlayer: String = "X"
    @State private var winner: String? = nil
    @State private var moves: Int = 0
    
    private let wins: [[Int]] = [
        [0,1,2],[3,4,5],[6,7,8],
        [0,3,6],[1,4,7],[2,5,8],
        [0,4,8],[2,4,6]
    ]
    
    var body: some View {
        VStack(spacing: 16) {
            Text(statusText)
                .font(.title2).bold()
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 8), count: 3), spacing: 8) {
                ForEach(0..<9) { i in
                    CellView(symbol: board[i])
                        .onTapGesture { tap(i) }
                }
            }
            .padding(.horizontal, 24)
            
            Button("Reset") { reset() }
                .buttonStyle(.borderedProminent)
        }
        .padding()
    }
    
    private var statusText: String {
        if let w = winner { return w == "Draw" ? "Draw!" : "\(w) wins!" }
        return "Turn: \(currentPlayer)"
    }
    
    private func tap(_ i: Int) {
        guard board[i].isEmpty, winner == nil else { return }
        board[i] = currentPlayer
        moves += 1
        checkForWinner()
        if winner == nil { currentPlayer = (currentPlayer == "X") ? "O" : "X" }
    }
    
    private func checkForWinner() {
        for line in wins {
            let a = board[line[0]], b = board[line[1]], c = board[line[2]]
            if !a.isEmpty, a == b, b == c {
                winner = a
                return
            }
        }
        if moves == 9 { winner = "Draw" }
    }
    
    private func reset() {
        board = Array(repeating: "", count: 9)
        winner = nil
        moves = 0
        currentPlayer = "X"
    }
}

struct CellView: View {
    let symbol: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(white: 0.95))
                .frame(height: 100)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(.gray.opacity(0.4), lineWidth: 1)
                )
            Text(symbol)
                .font(.system(size: 48, weight: .bold, design: .rounded))
                .foregroundColor(.primary)
        }
    }
}
ng TicTacToe.swift…]()


- **Link:** <https://github.com/FaTiH3446/>

# Captain America Shield Clock

##  Target Audience
**Teenagers** — This design is aimed at teens who enjoy superheroes, especially Marvel. The bold colors, clean lines, and interactive tap gesture fit their modern and stylish aesthetic.

##  Design Explanation
Our group designed a clock that mimics Captain America's shield. It uses layered red, white, and blue circles, with a white star in the center. The hour and minute hands are simple and match the clean theme. This design stands out visually while staying minimal and functional.

## FigJam Research
We explored various analog clock ideas and superhero-themed designs. Here are three clocks that inspired us:
1. A Marvel-themed wall clock with a shield design  
2. A minimal Apple Watch face with superhero accents  
3. A fan-made Captain America shield analog clock  

These helped us decide on layering circles, color combinations, and including a central star.

##  Features
- Tap gesture: updates minute direction (0 → 1 → 2 → 3 → 0)  
- Each full cycle increases the hour by 1  
- Hour displayed below the clock  
- Shield-style design with red, white, and blue concentric layers  
- White star in the center using `Image(systemName: "star.fill")`  
- SwiftUI layout using `ZStack`, `VStack`, and `@State` variables  
- Highlights abstraction with `minuteSeg` for direction control  

##  Reflection

**1. Who is your target audience? Why?**  
Teenagers — because they love superhero themes and modern aesthetics.

**2. How do your design choices support this audience?**  
Using Captain America's shield makes the clock visually fun and iconic. The interaction is simple and responsive, with a bold color scheme that appeals to teens.

**3. How did research (FigJam) influence your design?**  
Looking at superhero clock examples helped us decide to use layered circles and keep the face clean with a central star.

**4. What was the most challenging part of coding?**  
Aligning the shapes symmetrically and getting the rotation of the minute hand to match the abstraction logic was tricky at first.

**5. If you had more time, what would you add?**  
I’d add a smooth animation to the hand movements, sound effects when tapped, and maybe a shield “vibration” effect.

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
clock V1
import SwiftUI
struct ContentView: View {
    @State var hour = 10
    @State var minuteSeg = 0
    
    var body: some View {
        VStack {
            ZStack {
                if hour % 2 == 0 {
                    Circle()
                        .foregroundColor(.red)
                        .frame(width: 200, height: 200)
                } else if hour < 12 {
                    Circle()
                        .foregroundColor(.yellow)
                        .frame(width: 200, height: 200)
                } else {
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width: 200, height: 200)
                }
                
                Rectangle()
                    .frame(width: 4, height: 90)
                    .foregroundColor(.blue)
                    .offset(y: -45)
                    .rotationEffect(.degrees(minuteAngle(for: minuteSeg)))
                
                Rectangle()
                    .frame(width: 8, height: 60)
                    .foregroundColor(.black)
                    .offset(y: -30)
                
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.gray)
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
clock V2
import SwiftUI

struct ContentView: View {
    @State private var hour = 10
    @State private var minuteSeg = 0
    
    var body: some View {
        ZStack {
            (hour < 12 ? Color.white : Color.black).ignoresSafeArea()
            
            VStack(spacing: 20) {
                ZStack {
                    Circle().fill(Color.red).frame(width: 220, height: 220)
                    Circle().fill(Color.white).frame(width: 170, height: 170)
                    Circle().fill(Color.red).frame(width: 120, height: 120)
                    Circle().fill(Color.blue).frame(width: 70, height: 70)
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
                .onTapGesture(count: 2) {
                    hour = 0
                    minuteSeg = 0
                }
                
                Text("\(hour):00")
                    .font(.title)
                    .bold()
                    .foregroundColor(hour < 12 ? .black : .white)
                
                HStack(spacing: 20) {
                    Button("- Hour") {
                        hour = hour == 0 ? 23 : hour - 1
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    
                    Button("+ Hour") {
                        hour = (hour + 1) % 24
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                }
                
                Button("Next Minute") {
                    minuteSeg = (minuteSeg + 1) % 4
                    if minuteSeg == 0 {
                        hour = (hour + 1) % 24
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
            }
            .padding()
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
AP CSP – Topic 2.2 Data Compression

 Part A – Paper Questions
1. Lossless compression: Reduces file size without losing any information. The file can be restored exactly (PNG, ZIP).  
2. Lossy compression: Permanently removes some data to shrink file size, with some quality loss (JPEG, MP3).  
3. People use lossy for videos or songs because the files become much smaller and easier to share, and the quality loss is usually not noticeable.  
4. Text needs lossless because every character matters. Losing even one symbol changes the meaning.  

Part B – File Format Test (Sample)
Format: PNG  
Size: 3.2 MB  
Quality Change: None  
Type: Lossless  

Format: JPEG  
Size: 1.1 MB  
Quality Change: Slight blur  
Type: Lossy  

Format: MP3  
Size: 1.2 MB  
Quality Change: Less crisp sound  
Type: Lossy  

Format: ZIP  
Size: 2.8 MB  
Quality Change: None  
Type: Lossless  

 Part C – Video Compression (Sample)
Original Size: 15 MB  
Compressed Size A: 7 MB (about 50% smaller, slight blur)  
Compressed Size B: 4 MB (about 70% smaller, pixelation)  
Compressed Size C: 6 MB (about 60% smaller, minor artifacts)  
Compressed Size D: 3 MB (about 80% smaller, blocky quality)  

 Reflection
The best balance was around 60% reduction, where the video was smaller but still clear. Lossy compression is fine for music, images, and video sharing, but not for text or critical data. This shows abstraction in computer science because compression keeps only the details that matter most to humans


# Binary Counter Project

In this project, I learned how computers use bits to represent numbers and what happens during overflow.  
The console version helped me understand binary–decimal conversion.  
Building the SwiftUI app connected that logic to a real interface with buttons and colors.  
I also practiced using state variables and loops to update the display automatically.  
Overall, this project made binary counting and overflow clear and fun to visualize.

