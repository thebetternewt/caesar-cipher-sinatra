class Cipher
  def self.caesar_cipher(message, shift_factor)
    message = message.split('')
    message.each_with_index do |letter, index|
      if letter =~ /[a-z]/i
        shift_factor.times do
          if letter =~ /[z]/
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

    message.join
  end
end
