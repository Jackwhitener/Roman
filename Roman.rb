class Integer
	def to_roman
		result = ""
		number = self
		roman_mapping.keys.each do |divisor| #For each key in the hash, Do
		quotient, modulus = number.divmod(divisor) #divmod, number is the number we're dividing, and divisor is what we're dividing it by. Quotient is the result, and modulus is what the remainder is. Essentially, we're checking whether or not each number in the list is divisible by each number, putting in the corresponding number if it is, the number of times it is, then moving onto the next numeral.
		result << roman_mapping[divisor] * quotient #multiplying the number of left over numbers by the quotient, telling us how many of each numeral to add. This is for 3 being III, etc.
		number = modulus 
	end
	result
	end
	private
	def roman_mapping
	{
		1000 => "M",
		900 => "CM",
		500 => "D",
		400 => "CD",
		100 => "C",
		90 => "XC",
		50 => "L",
		40 => "XL",
		10 => "X",
		9 => "IX",
		5 => "V",
		4 => "IV",
		1 => "I"
	}
	end
end