module Resource
  def connection(routes)
    if routes.nil?
      puts "Эндпоинты не существуют #{self}"
      return
    end

    loop do
      print "Выберите операцию (GET/POST/PUT/DELETE) / q для выхода:"
      verb = gets.chomp
      break if verb == "q"

      action = nil

      if verb == "GET"
        print "Выберите действие (index/show) / q для выхода: "
        action = gets.chomp
        break if action == "q"
      end

      if(routes[verb].nil?)
        puts 'Введена несуществующая операция, попробуйте еще раз'
      elsif (action.nil?)
        routes[verb].call
      else
        routes[verb][action].call
      end
    end
  end
end
