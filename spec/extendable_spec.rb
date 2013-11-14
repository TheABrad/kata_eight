require 'spec_helper'

describe Extendable do 
  it "should work with the default six letter words" do 
  	words = [ "al", "bums", "albums", "bar", "ely", "barely", "goo", "hoo", "google", "car", "los", "danger", "modern"]
    
    extendable = Extendable.new(1,6)
    concat_words = extendable.find_words(words)

    concat_words.should eq(["al + bums => albums", "bar + ely => barely"])
  end

  it "should work with different word lengths" do 
  	words = ["face","book", "facebook", "worm", "bookworm", "al", "bums", "albums"]

  	extendable = Extendable.new(4,8)
  	concat_words = extendable.find_words(words)

  	concat_words.should eq(["face + book => facebook", "book + worm => bookworm"])
  end
end