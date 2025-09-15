---
layout: default
title: Projects
permalink: /project
---

Here are some projects. I’ll add repos, screenshots, and write-ups.

### Sample Project
- **What I built:** https://drive.google.com/file/d/16Rm_oKNtZt1SmPkFUtUKeTnwOsrUs-xg/view?usp=sharing
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
  
