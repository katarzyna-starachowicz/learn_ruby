def echo(s)
	s
end

def shout(s)
	s.upcase
end

def repeat(s, n=2)
	string = ""
	while n > 0
	  string += "#{s} "
	  n -= 1
	end 
	string.chop
end
# puts repeate("hello")
# puts repeate("hello", 3)

def start_of_word(s, n)
	s.slice(0, n)
end

def first_word(string)
	array = string.split
	array[0]
end

def titleize(string)
	stoa = string.split
	new_stoa = stoa.map {|word| word.capitalize}
	atoa = new_stoa.join(" ")
	atoa.gsub!("And", "and") if (atoa.gsub!("And", "and")).kind_of? String
	atoa.gsub!("Over", "over") if (atoa.gsub!("Over", "over")).kind_of? String
	atoa.gsub!("The", "the") if (atoa.gsub!("The", "the")).kind_of? String
	atoa[0] = atoa[0].capitalize
	atoa
end