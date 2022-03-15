# сумма цифр числа
def sum(n)
  if n < 10 then
    return n
  else
    return n%10 + sum(n/10)
  end
end

# произведение цифр числа
def mn(n)
  if n < 10 then
    return n
  else
    return n%10 * mn(n/10)
  end
end

# максимальная цифра числа
def max(n, n2)
  if n == 0 then
    return n2
  end

  if n % 10 > n2 then
    return max(n/10, n % 10)
  else
    return max(n/10, n2)
  end
end

# минимальная цифра числа
def min(n, n2)
  if n == 0
    return n2
  end

  if n % 10 < n2
    return min(n/10, n % 10)
  else
    return min(n/10, n2)
  end
end

# true если число просто, false иначе
def is_s1mple(v)
  for i in 2..v-1 do
    if v % i == 0
      return false
    end
  end
  return true
end

# наибольший простой делитель
def maxd(v)
  maxdel = 1
  for i in 2..v-1 do
    if v % i == 0 and is_s1mple(i) and i > maxdel then
      maxdel = i
    end
  end
  return maxdel
end

# Найти произведение цифр числа, не делящихся на 5
def proizvd(n)
  if n < 10 and n != 5
    return n
  elsif n < 10 and n == 5
    return 0
  elsif n % 10 != 5
    return n % 10 * proizvd(n / 10)
  else
    return proizvd(n / 10)
  end
end

def nod(a, b)
  while a != b do
    if a > b
      a = a - b
    else
      b = b - a
    end
  end
  return a
end

# НОД максимального нечетного непростого делителя числа и прозведения цифр данного числа.
def f(num)
  max_d = 1
  for i in 1..num do
    if num % i == 0 and !is_s1mple(i) and i > max_d and i % 2 > 0
      max_d = i
    end
  end
  return nod(max_d, mn(num))
end

def abt(num)
  puts "1. Сумма цифр числа\n2. Произведение цифр числа\n3. Минимальная цифра числа
4. Максимальная цифра числа\n5. Наибольший простой делитель\n6. Произведение цифр числа, не делящихся на 5
7. НОД максимального нечетного непростого делителя числа и прозведения цифр данного числа\nВведите параметр: "
  v = gets.chomp
  main(v, num)
end

def main(v, num)
  case v.to_str
  when '1'
    puts "Сумма цифр числа = #{sum(num)}"
  when '2'
    puts "Произведение цифр числа = #{mn(num)}"
  when '3'
    puts "Минимальная цифра числа = #{min(num, 10)}"
  when '4'
    puts "Максимальная цифра числа = #{max(num, 0)}"
  when '5'
    puts "Наибольший простой делитель = #{maxd(num)}"
  when '6'
    puts "Произведение цифр числа, не делящихся на 5 = #{proizvd(num)}"
  when '7'
    puts "НОД максимального нечетного непростого делителя числа и прозведения цифр данного числа = #{f(num)}"
  when '-help'
    abt(num)
  else
    puts "Hellooooooooooooooooo woooooooooooooooooooooooordl"
  end
end

puts "Введите число: "
num = gets.to_i


puts "Введите параметр: "
v = gets.chomp
while v != "0"
  main(v, num)
  v = gets.chomp
end