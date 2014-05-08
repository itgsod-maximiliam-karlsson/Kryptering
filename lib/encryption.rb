def reset_value(offset)
  if offset > 0
    25 - offset
  end
end

def encrypt(input, offset)
  raise ArgumentError, 'String must not be empty' if input.empty?
  raise ArgumentError, 'Offset must not be zero' if offset == 0

  list_char = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
  new_code = []
  new_char = ''
  space = 32.chr
  list_code = input.upcase.split('')

  list_code.each do |item|
    list_char.each_with_index do |number_char, index|
      if item == number_char
        if index < reset_value(offset)
          new_code << index + offset
        else
          new_code << (index - 26) + offset
        end
      elsif item == space
        new_code << space
      end
    end
  end

  new_code.each do |item|
    new_char = new_char + list_char[item]
  end

  new_char
end