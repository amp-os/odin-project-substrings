def substrings(search_terms, dictionary)
    dictionary.reduce(Hash.new(0)) do |count, string|
        if search_terms.downcase.include?(string)
            count[string] += 1
        end
        count
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)