def summa(number)
  number = number.to_i
  sum = 0
  while number != 0 do
    a = number % 10
    sum += a
    number /= 10
  end
  return sum
end

def maximum(number)
  number = number.to_i
  max = number % 10
  number /= 10
  while number != 0 do
    a = number % 10
    if a > max then
      max = a
    end
    number /= 10
  end
  return max
end

def minimum(number)
  number = number.to_i
  min = number % 10
  number /= 10
  while number != 0 do
    a = number % 10
    if a < min then
      min = a
    end
    number /= 10
  end
  return min
end

def proizvedenie(number)
  number = number.to_i
  proiz = 1
  while number != 0 do
    a = number % 10
    proiz *= a
    a = number /= 10
  end
  return proiz
end

number = ARGV[0]

puts "Сумма = #{summa(number)}"
puts "Максимум #{maximum(number)}"
puts "Минимум #{minimum(number)}"
puts "Произведение #{proizvedenie(number)}"

