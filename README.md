# Name-Checker
Simple Name Checker/Greeter written in x86-64 Assembly



How to compile (on Linux)

1. Install NASM
   sudo apt get install nasm

2. Clone and CD to the repo
   git clone https://github.com/xblyxxxyk/Name-Checker.git
   cd name-Checker

4. Assemble program with NASM
   nasm -f elf64 -o hello.o hello.asm

5. Link the program
   ld hello.o -o hello

6. Run the program
   ./hello

Now you should see "Hello, [yourname]" upon entering.
