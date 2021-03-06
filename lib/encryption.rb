def reset_value(pos, offset)
  if offset > 0
    value = pos + offset
    if value <= 26
      return value
    else
      value = value - 26 while value > 26
      return value
    end
  else
    value = pos + offset
    if value >= 0
      return value
    else
      value = value + 26 while value < 0
      return value
    end
  end
end



def encrypt(input, offset)
  raise ArgumentError, 'String must not be empty' if input.empty?
  raise ArgumentError, 'Offset must not be zero' if offset == 0

  alphabet = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z', ' ']
  encrypted_output = []
  input = input.upcase.split('')
  input
  input.each do |char|
    pos = alphabet.index(char)
    char_whih_offset = alphabet[reset_value(pos, offset)]
    if char != ' '
      char_whih_offset = 'A' if char_whih_offset == ' '
      encrypted_output << char_whih_offset
    else
      encrypted_output << ' '
    end
  end
  encrypted_output.join
end