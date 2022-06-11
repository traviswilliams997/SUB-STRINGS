def make_string_downcase(string)
  string.downcase
end

def substrings(string, array_of_strings)
    result_hash = Hash.new()

    downcase_string = make_string_downcase(string)

    array_of_strings.each do |word|
     substring_occurances =  downcase_string.scan(word)
        unless substring_occurances.empty? 
            substring_occurances.each do |subword|
                if(!(result_hash[subword]))
                    result_hash[subword] = 0
                end
                result_hash[subword] = result_hash[subword] + 1
            end
        end 

    end
    
    p result_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


substrings("Howdy partner, sit down! How's it going?", dictionary)
