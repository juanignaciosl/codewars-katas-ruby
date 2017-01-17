def letter_count(word)
  count = Hash.new(0)
  word.split('').each { |l| count[l] += 1 }
  count
end

def anagrams2(word, words)
  word_letter_count = letter_count(word)
  words.select { |w| word_letter_count == letter_count(w) }
end

def anagrams(word, words)
  sorted = word.split('').sort
  words.select { |w| sorted == w.split('').sort }
end

describe "letter_count" do
  it "counts letters" do
    expect(letter_count('aabb')).to eq('a' => 2, 'b' => 2)
  end
end

describe "anagrams" do
  it "finds anagrams" do
    expect(anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada'])).to eq ['aabb', 'bbaa']
  end
end
