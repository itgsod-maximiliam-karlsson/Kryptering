def encrypt(input, offset)
  raise ArgumentError, 'String must not be empty' if input.empty?
  raise ArgumentError, 'Offset must not be zero' if offset == 0
end



