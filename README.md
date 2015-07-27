# Kata FizzBuzz

This is a exercise that Ronny Ancorini ([@RonnyAnc](https://github.com/RonnyAnc)) used as demo for the TDD workshop at [LPA DevOps](https://github.com/LasPalmasDevOps).

The demo was implemented in Java, but I'd like to solve the same problem in Ruby. Following the same metodology, but trying to find my own solution.

## The problem

For a given number, return the sequence from 1 to that number but with the following sustitutions:

* If the number is **not divisible** by **2** or **3**, then the number will **not** be changed.
* If the number is divisible by **2**, then sustitute the number by the word "**Fizz**".
* If the number is divisible by **3**, then sustitute the number by the word "**Buzz**".
* If the number is divisible by **2** and by **3**, then sustitute the number by the word "**FizzBuzz**".

## Examples

**Example 1:** If the passed number is **2**, the output should be:

```
  1
  Fizz
```

**Example 2:** If the passed number is **7**, the output should be:

```
  1
  Fizz
  Buzz
  Fizz
  5
  FizzBuzz
  7
```

## Implementation

I'll use [RSpec](http://rspec.info/) for the tests because it can be used for [TDD](http://guide.agilealliance.org/guide/tdd.html) as well as [BDD](http://guide.agilealliance.org/guide/bdd.html) and the syntax has been used in others testing frameworks because its readability.

To setup the initial enviroment I had to have Ruby and RSpec installed in my machine. If you have Ruby in your machine you can install RSpec with this command:

```
$ gem install rspec
```

Then I created the minimal structure (which I've added to the repo) with the command:

```
$ rspec --init
```

> **NOTE:** I've added the option `--format documentation` to the generated `.rspec` file so I see better what the tests actually do.

> **NOTE:** To simplify, I put the code in the same file that the test (the problem was sort and it was easy to edit both at the same file) [spec/fizzbuzz_spec.rb](spec/fizzbuzz_spec.rb), but I plan to move to a more proper place.

> **NOTE**: Also, I decided to add one more case that I thought could be problematic, when the number passed is `0`. And I decided what to do in that case as that wasn't defined at the original exercise.
