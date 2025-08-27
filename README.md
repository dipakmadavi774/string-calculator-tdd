# String Calculator TDD

A simple Ruby implementation of a **String Calculator** following **Test-Driven Development (TDD)** principles.  
This project is designed for practicing TDD, writing clean and maintainable code, and demonstrating incremental development.

---

## Basic System Requirements

To run this Ruby String Calculator application, ensure your system meets the following requirements:

### Software
- **used Ruby -v** : ruby 3.3.0  (recommended 3.x)
- **used rails-v**  : Rails 7.2.2.1
- **RubyGems** (comes with Ruby)
- **RSpec** gem for testing (`gem install rspec`)
- Optional: `tree` command to view folder structure (`sudo apt install tree -y`)

### Operating System
- Linux (Ubuntu recommended)
- macOS
- Windows (via WSL recommended)

### Hardware
- Minimum 1 GB RAM
- Minimum 100 MB free disk space
- Basic CPU (any modern processor will work)

### Optional Tools
- Git for version control (`sudo apt install git -y`)
- Text editor or IDE: VS Code, Sublime, Atom, or any editor supporting Ruby

## Features

- Return `0` for an empty string.
- Return a single number as-is.
- Sum two or more numbers separated by commas.
- Handle newlines (`\n`) between numbers.
- Support **custom delimiters**, including multiple delimiters of any length.
- Raise exception for negative numbers and list all negative numbers in the message.
- Ignore numbers greater than 1000.

---

## Installation

1. Clone the repository:
```bash
git clone https://github.com/YOUR_USERNAME/string-calculator-tdd.git
cd string-calculator-tdd

 
2. Install RSpec (if not installed):
gem install rspec

3. Verify folder structure:
tree -L 1

string-calculator-tdd/
├── LICENSE
├── README.md
├── spec
│   ├── spec_helper.rb
│   └── string_calculator_spec.rb
├── string_calculator.rb
└── string_calculator_test.rb

4. Running Tests
Run all tests: rspec
Run a specific test file:rspec spec/string_calculator_spec.rb
You will be prompted to enter numbers separated by commas or custom delimiters.

5. Test-Driven Development Steps
Step 1: Empty String

Test: "" → 0

Implementation: Return 0 for empty input.

Step 2: Single Number

Test: "5" → 5

Implementation: Return number itself if input contains only digits.

Step 3: Two Numbers

Test: "1,5" → 6

Implementation: Split by , and sum numbers.

Step 4: Multiple Numbers

Test: "1,2,3,4" → 10

Implementation: Split by , and sum all numbers.

Step 5: Newlines Between Numbers

Test: "1\n2,3" → 6

Implementation: Split input by both , and \n.

Step 6: Custom Delimiters

Test: "//;\n1;2" → 3

Implementation: Parse custom delimiter from input.

Step 7: Negative Numbers

Test: "1,-2,3,-4" → raises exception

Implementation: Raise NegativeNumberError listing all negative numbers.

Step 8: Numbers > 1000

Test: "2,1001" → 2

Implementation: Ignore numbers greater than 1000.

Step 9: Multiple & Long Delimiters

Test: "//[***][%%]\n1***2%%3" → 6

Implementation: Support multiple delimiters of any length.
Step 10: CLI Interaction
Prompt user with:
puts "Enter numbers separated by comma or custom delimiters:"
input = gets.chomp
result = StringCalculator.add(input)
puts "output: #{result}"

11. Git Workflow

Clone the repo and create necessary files:

touch string_calculator.rb string_calculator_test.rb README.md .gitignore


Commit frequently after each TDD step:

git add .
git commit -m "✅ Step 1: Empty string returns 0"
git push origin main

Keep a clear TDD history by committing each incremental change.
