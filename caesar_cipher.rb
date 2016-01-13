puts
puts <<-eos
  Welcome to the Caesar Cipher program. For information on the Caeser Cipher,
  you can visit https://en.wikipedia.org/wiki/Caesar_cipher. Follow the prompts
  to enter your message and shift factor, and the program will return your
  ciphered message. Enjoy!
eos
puts
puts

def caesar_cipher(message, shift_factor)
  message = message.split('')
  message.each_with_index do |letter, index|
    if letter =~ /[a-z]/i
      shift_factor.times do
        if letter =~/[z]/
          letter = 'a'
          message[index] = letter
        elsif letter =~ /[Z]/
          letter = 'A'
          message[index] = letter
        else
          letter.next!
        end
      end
    end
  end

  return message.join
end


puts "Please type your message:"

new_line = gets.chomp
message = ""
while new_line != "end" do
  message = message + "\n" + new_line
  new_line = gets.chomp
end

puts
puts "What is your shift factor?"
shift_factor = gets.chomp.to_i
puts

# Uncomment to see detailed message input.
# puts "Here is your message:"
# p message

puts "Here is your ciphered message:"
puts caesar_cipher(message, shift_factor)
puts
