def greetings(mainName, surName, age)
    if age < 18
      puts "Привет, #{mainName} #{surName}! Тебе меньше 18 лет, но начать учиться программировать никогда не рано"
      else
      puts "Привет, #{mainName} #{surName}! Самое время заняться делом!"
    end
end
  
def foobar(a, b)
    if a == 20 or b == 20
     return b
    else puts a+b
   end 
end

puts 'Введите имя'
mainName = gets.chomp
    
puts 'Введите фамилию'
surName = gets.chomp
    
puts 'Введите возраст'
age = gets.to_i

greetings(mainName, surName, age)

puts "Input your first number: "
a = gets.to_i

puts "Input your second number: "
b = gets.to_i

foobar(a, b) 