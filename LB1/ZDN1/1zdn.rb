puts "Hello, wordl"
#комментарий
puts "Hello,#{ARGV[0]} !"
puts "Какой у вас любимый язык,#{ARGV[0]} ?"
langprog = STDIN.gets.chomp
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

puts "ВВедите команду ruby или OC"
my_chose = STDIN.gets.chomp
case my_chose
when "ruby"
  puts system "#{STDIN.gets.chomp}"
when "OC"
  puts system "#{STDIN.gets.chomp}"
else
  puts "Error"
end
