class CashMachine
    def initialize()
        @fileName = 'Balance.txt'
        if(File.exist?(@fileName))
            @file = File.open(@fileName)
        else
            @file = File.new(@fileName, 'w')
            @file.puts('100.0')
        end

        @currentBalance = @file.readlines.map(&:chomp)[0].to_f
        @file.close()
    end

    def main()
        puts 'Сумма на счету ' + @currentBalance.to_s

        while(true)
            puts 'Введите операцию'
            puts 'D - Добавление депозита'
            puts 'W - Запрос на снятие средств'
            puts 'B - Вывод текущего баланса'
            puts 'Q - Выход из системы'

            balanceOperation = gets.chomp();

            if (balanceOperation == 'D')
                puts 'Введите сумму депозита'
                deposit = gets.chomp().to_f
                addDeposit(deposit)
            elsif (balanceOperation == 'W')
                puts 'Введите сумму, на которую уменьшить баланс'
                moneyToReduce = gets.chomp().to_f
                reduceBalance(moneyToReduce)
            elsif (balanceOperation == 'B')
                puts 'Текущий баланс равен ' + @currentBalance.to_s
            elsif (balanceOperation == 'Q')
                saveBalance()
                break
            else
                puts 'Error! Введите верную команду, вы ввели ' + balanceOperation.to_s
            end


            puts "-----------------------------"
        end
    end

    def saveBalance()
        puts 'Сохранение баланса'
        @file = File.open(@fileName, 'w') 
        @file.write(@currentBalance)
        puts 'Баланс успешно сохранен!'
    end

    def reduceBalance(amount)
        if (amount > @currentBalance)
            puts 'Недостаточно средств на счету'
            return;
        end

        @currentBalance -= amount
        puts 'Баланс после расхода равен ' + @currentBalance.to_s 
    end

    def addDeposit(deposit)
        puts 'Сумма на счету = ' + @currentBalance.to_s

        if(@currentBalance <= 0)
            puts 'На счету недостаточно средств, операция отклонена'
            return;
        end

        puts 'Добавление новой суммы к счету ' + deposit.to_s

        @currentBalance += deposit
        puts 'Баланс обновлен, теперь он равен ' + @currentBalance.to_s
    end
end

cashInstance = CashMachine.new()
cashInstance.main()