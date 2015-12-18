


def translate(text)
  case
    when text[-1] == "e"
      text[-1] = "eay"
    when !text.start_with?("a", "e", "i", "o", "u", "y")
      if !text[1].include?(/[aeiouy]/)
        text += text[0..1] + "ay"
        #text.slice!(0..1)
      else
        text += text[0] + "ay"
        text[0] = ""
      end
  end
  text
end

package control
ruby debuger