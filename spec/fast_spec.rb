require 'spec_helper'

describe Fast do 
  it "should only select six letter words from two concatenated words" do
    words = [ "al", "bums", "albums", "bar", "ely", "barely", "goo", "hoo", "google", "car", "los", "danger", "modern"]

    concat_words = Fast.find_words(words)

    concat_words.should eq(["al + bums => albums", "bar + ely => barely"])
  end
end