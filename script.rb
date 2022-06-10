def substrings(string, array_of_strings)
    result_array = Array.new()
    new_string = string.downcase

    array_of_strings.each do |word|
    if new_string.include?(word)
      result_array.push(word)
    end 

    end
    p result_array
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


substrings("Howdy partner, sit down! How's it going?", dictionary)
#{ "below" => 1, "low" => 1 }