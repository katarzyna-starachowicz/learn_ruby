def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(array)
	array.inject(0) {|sum, n| sum + n}
end

def multi(*a)
	a.inject {|x, y| x*y}
end

def pow(a, b)
	a**b
end

def facto(a)
	if a == 0
		1
	else
		a * facto(a - 1)
	end
end