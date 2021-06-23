dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substring(string, word_list)
  words = string.split
  words = remove_special_chars(words)
  substrings = Hash.new(0)
  subs_array = words.map{|word| subs(word, word_list)}
  print subs_array.flatten
end


def subs(word, word_list)
  substring_array = []
  counter = 0
  subs_hash = Hash.new(0)
  until counter == word.length * -1
    substring_array << word[0..counter]
    counter -= 1 
  end

  print substring_array
end


 def remove_special_chars(words_array)
  alphabet = ('a'..'z').to_a
  words_array.map do |word|
    word.downcase.each_char do |char| 
      if alphabet.include?(char) == false
        word.delete!(char)
      end
    end 
  end
  words_array
 end
