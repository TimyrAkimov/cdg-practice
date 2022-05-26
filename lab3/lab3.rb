def replacing (str)

    if str[str.length-2, str.length-1] == "CS"
    
     puts 2 ** str.length
    
    else puts str.reverse
    
    end
    
end
    
def pokemonList()
    arr = []
    puts "Сколько покемонов Вы хотите добавить?"
    quantity = gets.to_i
    if quantity > 0
        until quantity == 0
            puts "Input name: "
            name = gets.chomp
            puts "Input color: "
            color = gets.chomp
            arr.push({name: name, color: color})
            quantity -= 1
        end
    else puts "No pokemon to add"
    end
    arr.each {|hash| puts hash}
end


str = gets.chomp
replacing(str)
pokemonList()