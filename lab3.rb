def chek(word)

    if word[-2] == "C" && word[-1] == "S"
    
    puts 2 ** word.size
    
    else
    
    puts word.reverse
    
    end
    
    end
    
    def pokemon
    
    puts "Сколько покемоном добавить ?"
    size = gets.to_i
    
    count = 0
    pokem = []
    names = nil
    color = nil
    while count < size do
    
    puts "введите имя"
    names = gets.chomp
    puts "введите цвет"
    color = gets.chomp
    
    pokem « {names => color}
    
    count += 1
    end
    
    count = 0
    while count < size do
    puts pokem[count]
    
    count += 1
    end
    
    end
    
    chek("eCS")
    chek("qwerty")
    pokemon