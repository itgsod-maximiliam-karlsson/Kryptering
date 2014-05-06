def encrypt(input, offset)
  raise ArgumentError, 'String must not be empty' if input.empty?
  raise ArgumentError, 'Offset must not be zero' if offset == 0
  list_char = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
  new_code = []
  new_char = ''
  list_code = input.split('')
end



