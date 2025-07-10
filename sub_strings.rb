def substrings(string, dictionary)
    results = {}
    lower = string.downcase

    dictionary.each do |substring|
        matches = lower.scan(substring).length
        results[substring] = matches if matches != 0
    end
    results
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)