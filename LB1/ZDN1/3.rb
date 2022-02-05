printf "Имя ? -> "
name = gets.chomp
puts "Hello, #{name}"
puts "Какой у вас любимый язык, #{name}?"
langprog = gets.chomp
case langprog
when "ruby"
  puts "подлиза"
when "Python"
  puts "Питонист zdddd"
when "C++"
  puts "Тебе делать нечего?"
when "R"
  puts "BigDATA???"
else
  puts "Такого нет"
end