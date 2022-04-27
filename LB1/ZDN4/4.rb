#3,15,27,39,51

def method_3(mass,i)
  return mass[i]== mass.max
end

def method15(mass,i)
  if i ==0 and mass[i]<mass[i+1]
    return true
  end
  if i ==mass.size-1 and mass[i]<mass[i-1]
    return true
  end

  return (1..mass.size-2).select{|x| mass[x]<mass[x-1] and mass[x]<mass[x+1]}.include?(i)
end

def method_27(mass)
  return mass[1,mass.size-1]+[mass[0]]
end

def method_39(mass)
  mass.each_with_index{|e,i| puts e if i%2 == 0}
  mass.each_with_index{|e,i| puts e if i%2 != 0}
end

def method_51_L1(mass)
  return  mass.uniq
end

def method_51_L2(mass)
  mass_un = method_51_L1(mass)
  return mass_un.map{|x| x=mass.select{|y| y==x}.size}
end


def main()
  puts "1 Дан целочисленный массив и натуральный индекс (число, меньшееразмера массива). Необходимо определить является ли элементпоуказанному индексу глобальным максимумом.
		    2 Дан целочисленный массив и натуральный индекс (число, меньшееразмера массива). Необходимо определить является ли элементпоуказанному индексу локальным минимумом.
		    3 Дан целочисленный массив. Необходимо осуществитьциклический сдвиг элементов массива влево на одну позицию.
		    4 Дан целочисленный массив. Необходимо вывести вначалеегоэлементы с четными индексами, а затем - с нечетными.
		    5 Для введенного списка построить два списка L1 и L2, где элементыL1это неповторяющиеся элементы исходного списка, а элемент спискаL2сномером i показывает, сколько раз элемент списка L1 с такимномеромповторяется в исходном.
        Выбор метода :"
  my_method = gets.chomp

  puts "
    1) Ввод с клавиатуры
    2) Выбор из файла
        "
  my_option = gets.chomp
  my_arr = Array.new
  case my_option
  when "1"
    puts "Пишете массив через пробел"
    my_arr = (STDIN.gets.chomp).split(",").map!{|x| x.to_i}
  when "2"
    puts "Нужен адрес файла"
    my_address = gets.chomp
    my_str = IO.read(my_address) # C:\Users\VirusTM\Desktop\Task №4\input.txt
    my_arr = my_str.split.map(&:to_i)
    i=my_arr.last
    my_arr.delete_at(my_arr.size-1)
  else
    puts "Ошибка в выборе источника массива"
  end

  case my_method
  when "1"
    puts "введите индекс"
    i=(STDIN.gets.chomp).to_i
    puts method_3(my_arr,i)
  when "2"
    puts "введите индекс"
    i=(STDIN.gets.chomp).to_i
    puts method15(my_arr,i)
  when "3"
    puts method_27(my_arr)
  when "4"
    puts method_39(my_arr)
  when "5"
    puts method_51_L1(my_arr)
    puts " "
    puts method_51_L2(my_arr)
  else
    puts "Ошибка в выборе метода"
  end
end
main

