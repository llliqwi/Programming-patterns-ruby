puts "Введите список через пробел: "
list = gets.strip.split

newList = Array.new
list.each{|x| newList.append(x.to_i)}

def list_min(list)
  min = 100
  for item in list do
    if min > item  then
      min = item
    end
  end
  min
end

def list_max(list)
  max = 0
  for item in list do
    if max < item  then
      max = item
    end
  end
  max
end

def list_sum(list)
  sum = 0
  for item in list do
    sum += item
  end
  sum
end

def list_mult(list)
  mult = 1
  for item in list do
    mult *= item
  end
  mult
end

puts "Минимум списка: #{list_min(newList)}"
puts "Максимум списка: #{list_max(newList)}"
puts "Сумма списка: #{list_sum(newList)}"
puts "Произведение списка: #{list_mult(newList)}"