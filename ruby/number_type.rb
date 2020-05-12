def get_number_type()
  number = 0
  while number <= 1
    print "Informe um número: "
    number = gets().chomp().to_i

    if number <= 1
      puts "Informe um número maior que 1!\n\n"
    end
  end

  if is_prime(number)
    puts "#{number} é um número Primo!"
  elsif is_esoteric(number)
    puts "#{number} é um número Esotérico!"
  else
    puts "#{number} é um número Cético!"
  end
end

def is_esoteric(number)
  return number.remainder(3) == 0 && number.remainder(5) == 0
end

def is_prime(number)
  return (2..number-1).none?{|num| number.remainder(num) == 0}
end

get_number_type
