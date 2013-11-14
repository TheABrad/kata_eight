class Fast
  
  def self.find_words(words)
  	concat_words = []

  	word_groups = words.group_by{ |i| i.length}
  	range = (1..4).select { |i| word_groups.has_key?(i+1) && word_groups.has_key?(5-i) }
  	word_groups[6].each do |word|
  	  range.each do |i|
  	  	left = word[0..i]
  	  	right = word[i+1,6]

  	  	if word_groups[i+1].include?(left) && word_groups[5-i].include?(right)
  	  	  concat_words << "#{left} + #{right} => #{word}"
  	  	end
  	  end
  	end

  	concat_words
  end
end