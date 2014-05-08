def encrypt(input, offset)
  raise ArgumentError, 'String must not be empty' if input.empty?
  raise ArgumentError, 'Offset must not be zero' if offset == 0

  alphabet = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
  encrypted_input = []
  input = input.upcase.split('')

  input.each do |char|
    pos = alphabet.index(char)
    char_whih_offset = alphabet[pos + offset]
    encrypted_input << char_whih_offset
  end

  encrypted_input.to_s
end


def decrypt(input, offset)
  raise ArgumentError, 'String must not be empty' if input.empty?
  raise ArgumentError, 'Offset must not be zero' if offset == 0

  alphabet = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
  decrypted_input = []
  input = input.upcase.split('')

  input.each do |char|
    pos = alphabet.index(char)
    char_whih_offset = alphabet[pos - offset]
    decrypted_input << char_whih_offset
  end

  decrypted_input.to_s
end
