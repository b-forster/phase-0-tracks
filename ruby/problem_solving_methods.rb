def fib(index)
	fibonacci = [0, 1]
	until fibonacci.length == (index)
		fibonacci.push((fibonacci[-1])+(fibonacci[-2]))
	end
	p fibonacci
end

fib(4)

fib(100)