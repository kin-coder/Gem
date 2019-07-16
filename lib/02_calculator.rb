
def add(a,b)

	c = a + b

return c
end


def subtract(a,b)

	c = a - b

return c
end



def sum(a)
	
	resultat = a.sum

return resultat
end


def multiply(a,b) 

	c = a * b

return c
	
end


def power(a,b)
	
	c = a ** b

return c

end



def factorial(a)
	if a ==0 || a==1
		return 1
		else
			for i in 1...a
				b = a*i
				a = b
			end
	end
	return b
end
















