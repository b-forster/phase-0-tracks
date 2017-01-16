#5.6 Mandatory Pairing: Solving Problems with Data Structures

arr = [30, 76, 29, 18]

def search_array(array, number)
array.each do |item|
	if item == number
		puts array.index(number)
	elsif array.include?(number) == false
		p nil
	end
end

end

search_array(arr, 25)

#Release 1
def fib(index)
  fibonacci = [0, 1]
  until fibonacci.length == (index)
    fibonacci.push((fibonacci[-1])+(fibonacci[-2]))
  end
  p fibonacci
end

fib(4)

fib(100)

#Release 2

# Insertion algorithm
def insertion_sort(a)
    for i in 1...(a.length)
        j=i
        while j>0
            if a[j-1]>a[j]
                temp=a[j]
                a[j]=a[j-1]
                a[j-1]=temp
            else
              break
            end
            j=j-1
        end
    end
    return a
end

# Return a sorted array of integers
insertion_sort([300, 52, 32, 17, 40])