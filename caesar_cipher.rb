require './lib/cipher.rb'

puts
puts <<-eos
  Welcome to the Caesar Cipher program. For information on the Caeser Cipher,
  you can visit https://en.wikipedia.org/wiki/Caesar_cipher. Follow the prompts
  to enter your message and shift factor, and the program will return your
  ciphered message. Enjoy!
eos
puts
puts

puts "Please type your message: (type 'end' to end your message)"

new_line = gets.chomp
message = ""
while new_line != "end" do
  message = message + "\n" + new_line
  new_line = gets.chomp
end

puts
puts "What is your shift factor? (positive numbers only)"
shift_factor = gets.chomp.to_i
while shift_factor < 1
  puts "Please enter a whole number greater than '0':"
  shift_factor = gets.chomp.to_i
end
puts

# Uncomment to see detailed message input.
# puts "Here is your message:"
# p message

puts "Here is your ciphered message:"
puts Cipher.caesar_cipher(message, shift_factor)
puts
