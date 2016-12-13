def merge_sort(ary_a)
	if ary_a.length == 1
		return ary_a
	end
	ary_b =ary_a[0...ary_a.length/2]
	ary_c =ary_a[ary_a.length/2..ary_a.length]
	
	ary_b = merge_sort ary_b
	ary_c = merge_sort ary_c
	
	#puts "b: #{ary_b.inspect}"
	#puts "c: #{ary_c.inspect}"
	return merge(ary_b, ary_c)
end

def merge(ary_a = [], ary_b = [])
	c = []
	
	while (ary_a.length>0 and ary_b.length>0)
		if ary_a[0] > ary_b[0]
			c.push(ary_b[0])
			ary_b.delete_at(0)
		else
			c.push(ary_a[0])
			ary_a.delete_at(0)
		end
	end
	
	while ary_a.length>0
		c.push(ary_a[0])
		ary_a.delete_at(0)
	end
	
	while ary_b.length>0
		c.push(ary_b[0])
		ary_b.delete_at(0)
	end
	return c
end

the_array = merge_sort [9,6,8,4,3,2,5,6,7,21,45,100,88]
puts the_array.inspect