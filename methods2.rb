module Methods2
	
	def elevenish?(n)
		if n == 1 || n == 0
			false
		elsif n % 11 == 0 || (n - 1) % 11 == 0
			true
		else
			false
		end
	end
	
	def ice_cream_party(ice, candy)
		if ice + candy < 5
			return 0
		elsif ice >= 2 * candy || candy >= 2 * ice
			return 2
		else
			return 1
		end
	end
	
	def squirrel_party?(weekend, nuts)
		if nuts >= 40
			if nuts <= 60 || weekend
				return true
			end
		end
		return false
	end
	
	def ticket(a, b, c)
		ab = a + b
		ac = a + c
		bc = b + c
		if ab == 10 || ac == 10 || bc == 10
			return 10
		elsif ab - 10 == ac || ab - 10 == bc
			return 5
		else
			return 0
		end
	end

	def in_order?(a, b, c, bOk)
		if bOk == false
			c > b && b > a
		else
			c > b
		end
	end

	def less_by_ten?(a, b, c)
		(a - b).abs == 10 || (a - c).abs == 10 || (b - c).abs == 10
	end
	
	def fizz_string(str)
		if str[0] == 'f' && str.reverse[0] == 'b'
			return "fizzbuzz"
		elsif str.reverse[0] == 'b'
			return "buzz"
		elsif str[0] == 'f'
			return "fizz"
		else
			return str
		end	
	end

	def first_last_six(a, b, c)
		arr = [a, b, c]
		arr[0] == 6 || arr.reverse[0] == 6
	end

	# TODO - write rotate_left
	def rotate_left(a, b, c)
		
	end

	# TODO - write double23?
end