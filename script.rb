dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substring(string, word_list)
  words = string.split
  substrings = Hash.new(0)
  subs_array = words.map{|word| split_word(word)}
  subs_array = subs_array.flatten
  subs_array.each{|word| substrings[word] += 1 if word_list.include?(word.downcase)}
  print substrings
end

def split_word s
  (0..s.length).inject([]){|ai,i|
    (1..s.length - i).inject(ai){|aj,j|
      aj << s[i,j]
    }
  }.uniq
end



substring("Howdy partner, sit down! How's it going?", dictionary)
substring("below", dictionary)