# Sample list of words
words = ["level", "elephant", "ruby", "book", "hello"]

for word in words do
    puts "Word: #{word}"
    # is the word a palindrome?
    if word == word.reverse
        puts "Palindrome: Yes"
    else 
        puts "Palindrome: No"
    end

    # does the word contain an e?
    # use .inlcude?
     if word.include?('e')
        puts "Contains 'e': Yes"
     else 
        puts "Contains 'e': No"
     end
    # how many characters in this word?
    # use .length
    puts "Character Count: #{word.length}"

    # is the word 'ruby'? 
    # change to 'python' using gsub
    if word == 'ruby'
        word.gsub!('ruby', 'Python')
        puts "After replacement: #{word}"
    else
        puts "After replacement: #{word}"
    end
end