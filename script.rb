def substrings(search_terms, dictionary)
    dictionary.reduce(Hash.new(0)) do |count, string|
        offset = 0
        while (offset != nil)
            offset = search_terms.downcase.index(string, offset)
            if (offset)
                count[string] += 1
                offset += 1
            end
        end
        count
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)