class String
	def to_arabic
		result = 0
		string = self
		roman_mapping.values.each do |roman| #For each value, Do.
			while string.start_with?(roman) #While there's still a roman numeral, do the following
				result += roman_mapping.invert[roman] #add the inverted value, making the numerals the keys, and the integers the values. i could probably just retype the hash, but screw it, right?
				string = string.slice(roman.length, string.length)  # uses the slice method to grab the first numeral, removing it so the while loop can move on to the next numeral
			end
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