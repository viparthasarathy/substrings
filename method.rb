def substrings(word, substrings)
	#takes word as first argument, array of valid substrings as second
	# returns hash listing each substring found in original string and number of occurences
	frequencyHash = Hash.new(0)
	wordList = word.split(" ")
	wordList.each do |word|
		substrings.each do |substring|
			tempWord = word.downcase
			while tempWord.length > 0
				if tempWord.include?(substring)
					frequencyHash[substring] += 1
					tempWord = tempWord.sub(substring, '')
				else
					break
				end
			end
		end
	end
	frequencyHash
end