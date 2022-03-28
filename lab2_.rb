def greeting

    puts 'введите имя'
    mainName = gets.chomp
    
    puts 'введите фамилию'
    surName = gets.chomp
    
    puts 'введите возраст'
    age = gets.to_i
    
    if age < 18
    puts "Привет #{mainName} #{surName} Тебе меньше 18 лет, но начать учиться программировать никогда не рано"
    else
    puts "Привет #{mainName} #{surName} Самое время заняться делом!"
    end
    
    end
    
    def foobar(a, b)
    
    if a == 20
    puts b
    elsif b == 20
    puts a
    else
    puts a + b
    end
    
    end
    
    greeting
    greeting
    foobar(10, 20)
    foobar(20, 15)
    foobar(20, 20)
    foobar(5,9)