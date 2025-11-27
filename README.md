# FaTiH3446.github.io
This website is created as part of my Computer Science Principles course. It showcases my projects, assignments, and explorations in computing, programming, and problem-solving. The goal is to share what I’ve learned and demonstrate how computer science connects to the real world.
a
Overflow:
It happens when I add more than 5 scoops. The cone resets to empty, just like a computer counter starting over after reaching its limit.

Abstraction:
The cone is like memory, and each scoop is stored data. It shows how storage works in a simple way.

Binary & Compression:
I learned that binary has limits and can overflow. Compression helps save space, just like using bits efficiently.
# Clock Game – Frog Escape Edition

**By:** Fatih Mehmethan Eren  

**How to play:**  
Tap Start, move the frog 🐸 using Left and Right to reach the green goal zone before time runs out. Avoid the red obstacles.

**Hardest part:**  
Keeping the timer and the obstacle movement synchronized correctly.

**How I used if, for, and functions:**  
- `if` controls time up, collisions, and level transitions  
- `for` loops move and spawn obstacles  
- functions like `startLevel()`, `nextLevel()`, and `overflowReset()` keep the code organized  

**Overflow behavior:**  
When the timer hits 0, the game resets the level and restarts the countdown.




1. Why did you choose this theme?
I chose this theme because food items are simple, familiar, and easy to organize.

2. What did you learn about lists?
I learned that lists store multiple values in order and every item has an index starting from 0.

3. What would change if your list had more items?
If my list had more items, I would use loops to print them and the index numbers would increase automatically.

Pixel Painter 10×10 — Simple Pseudocode


1) Lists
- Create a list called cells with numbers 0 to 99.
- Create a list called cellColors with 100 items.
  - Start all colors as gray.

2) Drawing the grid (drawGrid)
- Use a loop for rows: 0 to 9.
- Inside it, use a loop for columns: 0 to 9.
- For each square:
  - index = row * 10 + column
  - Draw a square using cellColors[index]
  - Show the cell number (cells[index]) inside it.

3) Color palette
- Make a list of colors (example: red, purple, orange, gray).
- Show the colors as small circles on the screen.
- When the user taps a circle, update selectedColor.

4) User input
- Show a text field for typing a number (0–99).
- Show a button called “Change”.

5) Changing the color (changeColor)
- When button is pressed:
  - Try to convert the text to a number.
  - If it is not a number → show “Invalid input”.
  - If it is between 0 and 99:
       cellColors[number] = selectedColor
  - Else:
       show “Invalid input”.


Nadin Tamer’in hikayesi beni en çok etkileyen kısmı, çok büyük ve karmaşık bir projeye değil, sadece tek bir ekran ve tek bir fikirle başlamış olmasıydı. Bu bana, yaratıcı bir projenin küçük bir ilham kıvılcımıyla başlayabileceğini gösterdi. Gelecekte ben de hem teknolojiyi hem de tasarımı birleştiren, kullanıcı deneyimine odaklanan bir Swift Playground fikri geliştirmek istiyorum.
