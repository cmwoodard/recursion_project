def fibs(n)
	ary = [0, 1]
	element = 1	
	
	while element <= n
		number = ary[element]
		prev_number = ary[element-1]
		ary << number + prev_number
		element+=1
	end	
	ary	
end

def fibs_rec(n)
   if n<2
	n
	else
		return fibs_rec(n-1)+fibs_rec(n-2)
	end
   
end

puts fibs_rec(10)