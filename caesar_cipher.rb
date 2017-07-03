require 'sinatra'
require './lib/cipher.rb'

get '/' do
  message = params['message']
  shift_factor = params['shift-factor'].to_i
  if message && shift_factor
    ciphered_message = Cipher.caesar_cipher(message, shift_factor)
  end
  erb :index, locals: { message: message,
                        shift_factor: shift_factor,
                        ciphered_message: ciphered_message }
end
