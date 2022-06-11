def make_string_downcase(string)
  string.downcase
end
def check_for_all_occurances_of_string(string, word)
    string.scan(word)
end
def check_if_string_exists_in_hash(result_hash,subword)
  !(result_hash[subword])
end
def add_substring_and_to_hash(result_hash, subword)
    if check_if_string_exists_in_hash(result_hash, subword)
        result_hash[subword] = 0
    end
end
def substrings(string, array_of_strings)
    result_hash = Hash.new()

    downcase_string = make_string_downcase(string)

    array_of_strings.each do |word|
     substring_occurances =  check_for_all_occurances_of_string(downcase_string, word)
        unless substring_occurances.empty? 
            substring_occurances.each do |subword|
                add_substring_and_to_hash(result_hash, subword)
                result_hash[subword] = result_hash[subword] + 1
            end
        end 

    end
    
    p result_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


substrings("Howdy partner, sit down! How's it going?", dictionary)
