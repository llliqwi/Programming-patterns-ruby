def min(array)
  min = 100
  for item in array do
    if min > item  then
      min = item
    end
  end
  min
end

def max(array)
  max = 0
  for item in array do
    if max < item  then
      max = item
    end
  end
  max
end

def sum(array)
  sum = 0
  for item in array do
    sum += item
  end
  sum
end

def mult(array)
  mult = 1
  for item in array do
    mult *= item
  end
  mult
end

def file(path)
  puts "Массив из файла"
  return File.read(path).split().map(&:to_i)
end

def klava()
  puts "Введите массив через пробел : "
  return STDIN.gets.chomp.split().map(&:to_i)
end



def main()

  if ARGV[1] == "klava"
    array = klava()
  elsif ARGV[1] == "file"
    array = file(ARGV[2])
  else
    puts "$$$$$$$$$$$$$$$"
  end

  case ARGV[0]
  when "min"
    puts "Нахождение минимального элемента"
    puts "Результат: #{min(array)}"
  when "max"
    puts "Нахождение максимального элемента"
    puts "Результат: #{max(array)}"
  when "sum"
    puts "Нахождение суммы элементов"
    puts "Результат: #{sum(array)}"
  when "mult"
    puts "Нахождение произведения элементов"
    puts "Результат: #{mult(array)}"
  end
end

main()
