word = "och,ay"

a = 0
b = 100
letters2 = word.split(//)
letters2.each do |letter|
  a += 1
  b = a - 1 if %w{, ! ? . : ; -}.include? letter
end

puts letters2.class

if b <= a
  word = letters2.join("").capitalize!
  word += word[b]
  word[b] = ""

  puts word
else
  word = letters2.join("")
  puts word
end





#puts word.capitalize!