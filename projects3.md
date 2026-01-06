---
layout: default
title: Projects V3
permalink: /project-v3
---
<img width="1094" height="658" alt="image" src="https://github.com/user-attachments/assets/21c3c7cb-ea87-4623-9220-41148c313e7c" />
[SwiftUI.My.Aray.V1 (1).zip](https://github.com/user-attachments/files/24456630/SwiftUI.My.Aray.V1.1.zip)
<div class="big-text">

- I chose this theme because it is simple and practical, making it easy to focus on how the program logic works.
- I learned that lists allow me to store multiple values in one variable and use loops to process them efficiently.
- If the list had more items, the program would still work the same, but loops would be even more useful to handle the data automatically.


</div>

World Clock V1 
-[city.list (1).zip](https://github.com/user-attachments/files/24456763/city.list.1.zip)
- I chose this theme because I wanted to focus on real travel destinations from Turkey, the US, and the UK. 
- 2️ I learned that lists let me store multiple items in one place and access each one by its index. 
- 3️ If my list had more items, it would be harder to manage manually, so loops would become more important.




-Unplugged to Coding: Cryptography Projects

https://github.com/user-attachments/assets/972425ff-efda-49da-957b-7c54f28893df


Review Section
Review – Last 3 Projects

In this review I evaluated my last three projects: Pixel Painter, Cryptography Project (Morse Code), and Caesar Cipher Activity. Each category is scored 0 or 1 point. If I did not get full points I explained why.

Pixel Painter

Video: 1 I clearly explained how the 10x10 grid works, how the user chooses a number, and how the selected cell changes color.

Program Requirements: 1 My project included a 10x10 grid, lists for cells and colors, user input between 0 and 99, a button to confirm the action, and a function to update the grid.

Written Response 1: 1 I described the purpose of the program, the user input, and the output of the system.

Written Response 2a – Algorithm: 1 My algorithm used sequencing, selection, and iteration. I calculated the index with row * 10 + col and updated the cell color.

Written Response 2b – Errors and Testing: 0 I did not describe enough test cases or debugging steps, so this category would not get full credit.

Written Response 2c – Data and Procedural Abstraction: 1 I used lists to store cell colors and a function to change cell color, which shows abstraction.

Code Snippet: ForEach(0..<10) { row in ForEach(0..<10) { col in let index = row * 10 + col Rectangle().fill(colors[index]) } }

Cryptography Project (Morse Code)

Video: 1 I explained how the unplugged activity works, how messages are encoded, and how Morse code relates to secure and efficient communication.

Program Requirements: 1 I created an activity sheet, provided the solution, added three questions, and included a small coding example.

Written Response 1: 1 I described the purpose of the project and what problem Morse code solves.

Written Response 2a – Algorithm: 1 I explained the idea of iterating through each character and finding its Morse code equivalent.

Written Response 2b – Errors and Testing: 0 I did not provide strong test case explanations, so this category does not get the point.

Written Response 2c – Data and Procedural Abstraction: 1 I used a table of Morse codes and a function to describe the encoding process, which shows abstraction.

(No code snippet required for this project.)

Caesar Cipher Activity

Video: 0 I did not record a video for this activity.

Program Requirements: 1 I made a Caesar cipher that shifts letters by a key and returns the encoded text.

Written Response 1: 1 I explained the input, process, and output of the Caesar cipher system.

Written Response 2a – Algorithm: 1 I described the steps of looping over each character, shifting its index, and wrapping around the alphabet.

Written Response 2b – Errors and Testing: 0 I did not explain multiple test cases or debugging steps.

Written Response 2c – Data and Procedural Abstraction: 0 I did not use a strong reusable data abstraction like a list or dictionary, so this category would not earn the point.

(No code snippet required for this project.)



Big Idea 3 Review

Number Guessing

<details>
<summary><strong>Show Swift code</strong></summary>

```swift
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Project 1: Number Guess")
                .font(.title2)

            ForEach(messages, id: \.self) { Text($0) }
        }
        .padding()
    }

    var messages: [String] {
        let secret = Int.random(in: 1...10)
        let guesses = [2, 5, 7, 9]

        var lines: [String] = []

        for g in guesses {
            if g == secret {
                lines.append("Guess \(g) is correct!")
                break
            } else if g < secret {
                lines.append("Guess \(g) is too low")
            } else {
                lines.append("Guess \(g) is too high")
            }
        }

        return lines
    }
}

    }
}

