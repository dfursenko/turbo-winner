require_relative './classes/study_group'

# ДОМАШНЕЕ ЗАДАНИЕ 7. Задание 6.

# 6. Написать регулярное выражение для строки вида “[Ж2]”,
#   где буквы могут быть использованы из диапазона от А до К, а числа от 1 до 10. (для желающих)

def check(array, regexp)
  array.each do |string|
    result = string.match(regexp) ? 'подходит' : 'не подходит'
    puts "Строка \"#{string}\" \t#{result} \tпод шаблон [Ж2]"
  end
end

array = %w([Ж2] [А2] [З10] [Б12] [2Ж] [Д0] [ДД] [00] [Ф7] [ж2] [К8])
regexp = /^\[([А-К]){1}([1-9]|10){1}\]$/

check(array, regexp)


# РЕЗУЛЬТАТ:
# => Строка "[Ж2]" 	  подходит 	    под шаблон [Ж2]
# => Строка "[А2]" 	  подходит 	    под шаблон [Ж2]
# => Строка "[З10]" 	подходит 	    под шаблон [Ж2]
# => Строка "[Б12]" 	не подходит 	под шаблон [Ж2]
# => Строка "[2Ж]" 	  не подходит 	под шаблон [Ж2]
# => Строка "[Д0]" 	  не подходит 	под шаблон [Ж2]
# => Строка "[ДД]" 	  не подходит 	под шаблон [Ж2]
# => Строка "[00]" 	  не подходит 	под шаблон [Ж2]
# => Строка "[Ф7]" 	  не подходит 	под шаблон [Ж2]
# => Строка "[ж2]" 	  не подходит 	под шаблон [Ж2]
# => Строка "[К8]" 	  подходит 	    под шаблон [Ж2]



