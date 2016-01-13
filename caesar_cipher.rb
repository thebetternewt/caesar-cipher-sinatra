puts "Please type is your message:"
message = gets.chomp

puts "What is your shift factor?"
shift_factor = gets.chomp.to_i

puts "Here is your ciphered message:"
puts caesar_cipher(message, shift_factor)

def caesar_cipher(message, shift_factor)
  message = message.split('')
  message.each_with_index do |letter, index|
    if letter =~ /[a-z]/i
      shift_factor.times do
        if letter =~/[z]/
          message[index] = 'a'
        elsif letter =~ /[Z]/
          message[index] = 'A'
        else
          letter.next!
        end
      end
    end
  end

  return message.join
end
