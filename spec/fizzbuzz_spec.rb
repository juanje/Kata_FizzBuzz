# TODO: For a given number, return the sequence from 1 to that number but with the following sustitutions:
#
# * If the number is **not divisible** by **2** or **3**, then the number will **not** be changed.
# * If the number is divisible by **2**, then sustitute the number by the word "**Fizz**".
# * If the number is divisible by **3**, then sustitute the number by the word "**Buzz**".
# * If the number is divisible by **2** and by **3**, then sustitute teh numbre by the word "**FizzBuzz**".
#
# Examples:
#
# Example 1: If the passed number is '2', the output should be:
#
#  1
#  Fizz
#
# Example 2: If the passed number is '7', the output should be:
#
#  1
#  Fizz
#  Buzz
#  Fizz
#  5
#  FizzBuzz
#  7
#

def parse(number)
  if number % 2 == 0 && number % 3 == 0
    'FizzBuzz'
  elsif number % 2 == 0
    'Fizz'
  elsif number % 3 == 0
    'Buzz'
  else
    number
  end
end

def sequence(number)
  parsed_sequence = ""
  1.upto(number) do |element|
    parsed = parse(element)
    parsed_sequence += "#{parsed}\\n"
  end
  parsed_sequence
end

describe "FizzBuzz parser" do

  it "should return '1\\n' when the number is '1'" do
    expect(sequence(1)).to eq('1\n')
  end

  it "should return '1\\nFizz\\n' when the number is divisible by 2" do
    expect(sequence(2)).to eq('1\nFizz\n')
  end

  it "should return '1\\nFizz\\nBuzz\\n' when the number is divisible by 3" do
    expect(sequence(3)).to eq('1\nFizz\nBuzz\n')
  end

  it "should return '1\\nFizz\\nBuzz\\nFizz\\n5\\nFizzBuzz\\n' when the number is divisible by 2 and by 3" do
    expect(sequence(6)).to eq('1\nFizz\nBuzz\nFizz\n5\nFizzBuzz\n')
  end

  it "should return '0\\n' when the number is '0'" do
    expect(sequence(0)).to eq('0\n')
  end

end
