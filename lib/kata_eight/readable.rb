class Readable
  
  def self.find_words(words)
    concatenated_word_list = []
    
    words = words.select { |word| word.length <= 6 }
    
  	words.each do |left_word|
  	  words.each do |right_word|
        
  	  	concatenated_word = left_word + right_word

  	  	if concatenated_word.length == 6
  	  	  if words.include?(concatenated_word)
            concatenated_string = "#{left_word} + #{right_word} => #{concatenated_word}"
            concatenated_word_list.push(concatenated_string)
  	  	  end
  	  	end
        
  	  end
  	end

    concatenated_word_list
  end
end