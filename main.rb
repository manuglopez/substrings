dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

string = "Howdy partner, sit down! How's it going?"

def alternative(message, dictionary)
  result = {}

  dictionary.each do |word|
    message.downcase.scan(/\w+/).each do |message_word|
      result[word] = result[word].to_i + 1 if word.include? message_word
    end
  end

  result
end

puts alternative("Below Below", dictionary)
#output = {"below"=>2}
puts alternative(string, dictionary)
#output = {"down"=>1, "going"=>1, "how"=>1, "howdy"=>2, "it"=>1, "partner"=>1, "sit"=>3}
