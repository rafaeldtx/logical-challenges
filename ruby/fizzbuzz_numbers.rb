(1..100).each do |n|
  if n.remainder(3) == 0 && n.remainder(5) == 0
    puts 'fizzbuzz'
  elsif n.remainder(3) == 0
    puts 'fizz'
  elsif n.remainder(5) == 0
    puts 'buzz'
  else
    puts n
  end
end
