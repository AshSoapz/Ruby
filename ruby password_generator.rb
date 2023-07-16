def generate_password(length, include_uppercase, include_numbers, include_symbols)
  characters = []

  # Include lowercase letters by default
  characters += ("a".."z").to_a

  # Include uppercase letters if requested
  characters += ("A".."Z").to_a if include_uppercase

  # Include numbers if requested
  characters += (0..9).to_a if include_numbers

  # Include symbols if requested
  characters += ["!", "@", "#", "$", "%", "^", "&", "*", "-", "_", "+", "="] if include_symbols

  # Shuffle the characters array and take the first 'length' characters
  password = characters.shuffle.take(length).join

  return password
end

# Get user preferences for the password
print "Enter the desired password length: "
length = gets.chomp.to_i

print "Include uppercase letters? (y/n): "
include_uppercase = gets.chomp.downcase == "y"

print "Include numbers? (y/n): "
include_numbers = gets.chomp.downcase == "y"

print "Include symbols? (y/n): "
include_symbols = gets.chomp.downcase == "y"

# Generate and display the password
password = generate_password(length, include_uppercase, include_numbers, include_symbols)
puts "Your generated password is: #{password}"
