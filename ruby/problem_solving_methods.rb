def search_array(list, number)
  count=0
  while count<=list.length
    if list[count]==number
      return count
    else
      count+=1
    end
  end
end	


test_arr = [5, 53, 12, 8]
p search_array(test_arr, 8)
p search_array(test_arr, 24)


def fib(number)
  number=number.to_i
  sequence=[]
  count=2
  if number==1
    sequence.push(0)
    p sequence
  elsif number==2
    sequence.push(0,1)
    p sequence
  else
    sequence.push(0,1)
    while count<number
      sequence[count]=sequence[count-1]+sequence[count-2]
      count+=1
    end
    p sequence[-1]
  end
end
fib(2)
fib(100)


array_to_sort = [ 35 , 14, 98, 77, 2, 55, 63, 22, 31, 64, 5 ]

def array_sort(array)
  counter = 0
  anti_counter = array.length - 1

  while anti_counter > 1

   
    while counter < anti_counter

 
      if array[counter] > array[counter + 1]
        number1 = array[counter]
        number2 = array[counter + 1]
   
        array[counter] = number2
        array[counter + 1] = number1
        counter += 1
      else
        counter += 1
      end 
    end
    anti_counter -= 1
    counter = 0
  end
  p array
end

array_sort(array_to_sort)
