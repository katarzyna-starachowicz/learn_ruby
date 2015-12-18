def translate(text)
  text = text.split
  text.map! do |word|
    x = 0
    while %w{b B c C d D f F g G h H j J k K l L m M n N p P q Q r R s S t T w W x X y Y z Z}.include? word[0] and x <= word.length
      x += 1
      if word[0..1] == "qu"
        word += word[0..1]
        word.slice!(0..1)
      else
        word += word[0]
        word.slice!(0)
      end
    end
    word += "ay"
    
    # Wcześniej poniższe dwa segmenty (w sensie graficznym, oddzielone enterem) były w odwrotnej kolejności.
    # Wówczas wyskakiwał mi błąd, że nie można uruchomić metody split na "zerowej" klasie (NilClass). 
    # Ale właściwie nie doszłam, o co mu chodziło...

    a = 0
    b = 100
    letters2 = word.split(//)
    letters2.each do |letter|
      a += 1
      b = a - 1 if %w{, ! ? . : ; -}.include? letter
    end
    if b <= a
      word = letters2.join("")
      word += word[b]
      word[b] = ""
    else
      word = letters2.join("")
    end
    
    # Prościej?: word.capitalize! if word =~ /[A-Z]/ 
    z = 0
    letters = word.split(//)
    letters.each do |letter|
      z = 1 if %w{A B C D E F G H I J K L M N O P R Q S T U W V X Y Z}.include? letter
    end
    if z == 1
      word = letters.join("").capitalize!
    else
      word = letters.join("")
    end

  end
  text.join(" ")
end