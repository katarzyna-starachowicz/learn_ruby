require 'bigdecimal'            # dołączenie biblioteki
require 'bigdecimal/util'       # dołączenie biblioteki

def ftoc(f)
	((f - 32)/1.8).to_d
end

def ctof(c)
	(c * 1.8 + 32).to_d
end