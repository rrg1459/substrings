def substrings(string, dictionary)
	result = {}
	dictionary.each do |word|
		result[word.downcase] = string.downcase.scan(word).length if string.downcase.include?(word)
	end
	result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
