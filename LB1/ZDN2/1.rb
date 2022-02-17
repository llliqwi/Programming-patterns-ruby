

i = ARGV[0].to_i
sum = 0
while i > 0
  sum += i%10
  i/=10
end
puts "Сумма цифр числа  = #{sum}"
