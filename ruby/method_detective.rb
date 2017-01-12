# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

puts "zom".insert(1,'o')
puts "zom".insert(2,'o')
# => “zoom”

# "enhance".<???>
# => "    enhance    "

puts "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

puts "the usual" << " suspects"
#=> "the usual suspects"

# " suspects".<???>
# => "the usual suspects"

puts "The case of the disappearing last letter".chomp("r")
# => "The case of the disappearing last lette"

puts "The mystery of the missing first letter".delete "T"
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
# => 4