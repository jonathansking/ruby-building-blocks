def substrings(string, dictionary)
  frequencies = Hash.new(0)
  string.downcase!
  dictionary.each do |word|
    frequencies[word] = string.scan(/#{word}/).length 
  end
  frequencies.delete_if { |key, value| value == 0}
  return frequencies
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)