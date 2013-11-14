class Readable
  
  def self.find_words(words)
    concatenated_word_list = []
    
    words = words.select { |word| word.length <= 6 }
    
  	words.each do |word_one|
  	  words.each do |word_two|
        
  	  	concatenated_word = word_one + word_two

  	  	if concatenated_word.length == 6
  	  	  if words.include?(concatenated_word)
            concatenated_string = "#{word_one} + #{word_two} => #{concatenated_word}"
            concatenated_word_list.push(concatenated_string)
  	  	  end
  	  	end
        
  	  end
  	end

    concatenated_word_list
  end
end