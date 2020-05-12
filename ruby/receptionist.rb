require 'date'

def receptionist()
  print 'Qual a sua data de nascimento: '
  date_of_birth = string_to_date(gets.chomp)

  today_date = DateTime.now.to_date

  if (date_of_birth > room_limit_date(today_date, 15, 2, 25))
    puts 'Por favor, dirija-se à sala 1 e aguarde'
  elsif(date_of_birth >= room_limit_date(today_date, 0, 1, 45))
    puts 'Por favor, dirija-se à sala 2 e aguarde'
  elsif(date_of_birth >= room_limit_date(today_date, 0, 0, 65))
    puts 'Por favor, dirija-se à sala 3 e aguarde'
  else
    puts 'Por favor, dirija-se à sala 4 e aguarde'
  end
end

def string_to_date(date)
  date = date.split('/')

  return Date.new(
    date[2].to_i,
    date[1].to_i,
    date[0].to_i
  )
end

def room_limit_date(today_date, day, month, year)
  return today_date.prev_day(day).prev_month(month).prev_year(year)
end

receptionist
