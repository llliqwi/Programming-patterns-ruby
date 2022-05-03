def method_3 str
  p str.split().shuffle().join(" ")
end

def method_8 str
  p str.split().select{|word| word.length.even?}.count
end

def method_16 str
  sample = ["белый", "синий", "красный"]
  p str.split.sort_by{|element| sample.index(element.downcase)}
end

def method_data str
  months = ["января", "февраля", "марта", "апреля", "мая", "июня", "июля", "августа", "сентября", "октября", "ноября", "декабря"]
  result = Array.new
  arr = str.split()

  for i in 0..arr.length-3
    if arr[i].scan(/\D/).empty? and arr[i].to_i >= 1 and arr[i].to_i <= 31 and months.index(arr[i+1]) != nil and arr[i+2].scan(/\D/).empty?
      result.push("#{arr[i]} #{arr[i+1]} #{arr[i+2]}")
    end
  end
  p result
end

def method_33 str
  return str.scan(/[а-яА-Я]/).count
end

def method_88 str
  return str.scan(/[a-z]/).uniq
end

def method_1616 str
  return str.scan(/-*\d+/).map {|num| num.to_i}.min
end

if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

answer = " "
while answer != "0"
  puts" "
  puts "Введите номер задачи :
  1 - Перешивание всех слов в строке в случайном порядке
  2 - Нахождение количество слов с четным количеством символов
  3 - Russia Flag
  4 - Необходимо найти все даты, которые описаныввиде 31 февраля 2007
  5 - Нахождение количество русских символов
  6 - Нахождение всех используемых строчных символов латиницы
  7 - Нахождение минимального из имеющихся в строке целых чисел
  0 - Выход из программы

"
  answer = STDIN.gets.chomp.strip
  case answer
  when "1"
    print "Введите исходную строку: "
    str = STDIN.gets.chomp
    method_3 str
  when "2"
    print "Введите исходную строку: "
    str = STDIN.gets.chomp
    method_8 str
  when "3"
    print "Введите исходную строку: "
    str = STDIN.gets.chomp
    method_16 str
  when "4"
  print "Введите исходную строку: "
  str = STDIN.gets.chomp
  method_data str
  when "5"
    print "Введите исходную строку: "
    str = STDIN.gets.chomp
    puts method_33 str
  when "6"
  print "Введите исходную строку: "
  str = STDIN.gets.chomp
  puts method_88 str
  when "7"
    print "Введите исходную строку: "
    str = STDIN.gets.chomp
    puts method_1616 str
  end
end
