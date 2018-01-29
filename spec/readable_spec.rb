require 'spec_helper'

describe Readable do
  it 'only selects six letter words from two concatenated words' do
    words = ['al', 'bums', 'albums', 'bar', 'ely', 'barely', 'goo', 'hoo', 'google', 'car', 'los', 'danger', 'modern']

    concat_words = Readable.find_words(words)

    expect(concat_words).to eq(['al + bums => albums', 'bar + ely => barely'])
  end
end
