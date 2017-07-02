require 'cipher'

describe '.ceaser_cipher' do
  it "returns 'b' when given message: 'a', and shift_factor: 1" do
    expect(Cipher.caesar_cipher('a', 1)).to eql 'b'
  end

  it "returns 'a' when given message: 'y', and shift_factor: 2" do
    expect(Cipher.caesar_cipher('y', 2)).to eql 'a'
  end

  it "returns 'C' when given message: 'Z', and shift_factor: 3" do
    expect(Cipher.caesar_cipher('Z', 3)).to eql 'C'
  end

  it "returns 'XYZ' when given message: 'ABC', and shift_factor: 23" do
    expect(Cipher.caesar_cipher('ABC', 23)).to eql 'XYZ'
  end

  it "returns 'Gppcbs!' when given message: 'Foobar!', and shift_factor: 1" do
    expect(Cipher.caesar_cipher('Foobar!', 1)).to eql 'Gppcbs!'
  end

  it "returns '123-456-7890' when given message: '123-456-7890', and shift_factor: 100" do
    expect(Cipher.caesar_cipher('123-456-7890', 100)).to eql '123-456-7890'
  end

  it "returns 'B-izqifobufe-tusjoh!' when given message: 'A-hyphenated-string!', and shift_factor: 1" do
    expect(Cipher.caesar_cipher('A-hyphenated-string!', 1)).to eql 'B-izqifobufe-tusjoh!'
  end

end
