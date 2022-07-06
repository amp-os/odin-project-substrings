def substrings(search_terms, dictionary)
    dictionary.reduce(Hash.new(0)) do |count, string|
        if string == search_terms.downcase
            count[string] += 1
        end
        count
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)