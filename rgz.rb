#task 1

def makeArrayFirstEvenLastOddIndex(array)
    result = Array.new
    count = array.size
    for i in 0..count
      if i % 2 ==0
        result.push(array[i])
      end
    end
    for i in 0..count
      if i % 2 !=0
        result.push(array[i])
      end
    end
    return result
  end
  
  def printArray(array)
    puts 'Вывод массива'
    for element in array
      print(element.to_s + ' ')
    end
    puts
  end
  
  
  
  array = [2,3,4,5,6,7,8,9,10]
  
  
  
  printArray(findElementWithEvenIndex(array))


  #task 2

  def makeArrayFirstOddLastEvenIndex(array)
    result = Array.new
    count = array.size
    for i in 0..count
      if i % 2 !=0
        result.push(array[i])
      end
    end
    for i in 0..count
      if i % 2 ==0
        result.push(array[i])
      end
    end
    return result
  end
  
  def printArray(array)
    puts 'Вывод массива'
    for element in array
      print(element.to_s + ' ')
    end
    puts
  end
  
  
  
  array = [2,3,4,5,6,7,8,9,10]
  
  
  
  printArray(makeArrayFirstOddLastEvenIndex(array))


  #task 3

  def sumDigit(digit)

    arrayOfDigits = digit
    sum = 0
    while(digit >= 1)
      sum += digit % 10
      digit /= 10;
    end