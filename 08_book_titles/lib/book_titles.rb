class Book
  attr_reader :title

  def title=(title2)
    words = title2.split
    words = [words[0].capitalize] +
      words[1..-1].map do |word|
        not_to_change = %w{the a an in of and}
        if not_to_change.include? word
          word
        else
          word.capitalize
        end
      end
    @title = words.join(" ")
  end

end