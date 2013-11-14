class Extendable
  def initialize(min_word_length,max_word_length)
  	@min_word_length = min_word_length
  	@max_word_length = max_word_length
  end

  def find_words(words)
  	concatenated_words = []
    word_list = words.select { |word| word.length >= @min_word_length && word.length <= @max_word_length }
    max_words = word_list.select { |word| word.length == @max_word_length }

    range = (@min_word_length..@max_word_length)

    max_words.each do |word|
      range.each do |i|
      	left = word[0..i-1]
      	right = word[i, @max_word_length - 1]

      	if word_list.include?(left) && word_list.include?(right)
      	  concatenated_words << "#{left} + #{right} => #{word}"
      	end
      end
    end
  	
  	concatenated_words
  end

end