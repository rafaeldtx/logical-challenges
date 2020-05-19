def validate_string(string)
  delimiters = {
    open: ['(', '[', '{'],
    close: [')', ']', '}']
  }

  sequence = string.split('').select do |c|
    delimiters[:open].include?(c) || delimiters[:close].include?(c)
  end

  valid = sequence_valid?(sequence, delimiters)

  puts "#{string} - #{valid}"
end

def sequence_valid?(sequence, delimiters)
  return false if sequence.length == 1 ||
                  delimiters[:close].include?(sequence[0])

  opens = []
  closes = []
  sequence.each_with_index do |char, index|
    if delimiters[:open].include? char
      opens << delimiters[:open].find_index(char)
    else
      closes << delimiters[:close].find_index(char)
    end
  end

  valid_opens = select_valid_opposites(opens, closes)
  valid_closes = select_valid_opposites(closes, opens)

  return false if valid_opens != opens || valid_closes != closes

  true
end

def select_valid_opposites(list, other_list)
  list.select.with_index { |item, index| item == other_list[-(index+1)] }
end

def get_string
  print 'Informe uma string: '
  string = gets.chomp

  validate_string(string)
end

get_string
