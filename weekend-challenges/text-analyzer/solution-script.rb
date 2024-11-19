# Read text from a file
def read_text_from_file(filename)
    File.read(filename)
end

# logic for text_analyzer requirments go here:

# method to count words
def count_words(text)
    words = text.scan(/\b\w+\b/)
    words.length
end

# method to count characters
def count_characters(text)
    text.length
end

# method to count parargraphs
def count_paragraphs(text)
    paragraphs = text.split("\n\n")
    paragraphs.size
end

def most_common_word(text)
    words = text.scan(/\b\w+\b/)
    word_frequency = Hash.new(0)

    words.each do |word|
        word_frequency[word.downcase] += 1
    end

    most_common = word_frequency.max_by{ |word, frequency| frequency }
    most_common
end

def word_frequency_stats(text)
    words = text.scan(/\b\w+\b/)
    word_frequency = Hash.new(0)

    words.each do |word|
        word_frequency[word.downcase] += 1
    end

    sorted_word_frequency = word_frequency.sort_by{ |word, frequency| -frequency}
    sorted_word_frequency[0...10]

end

def analyze_text(filename)
    text = read_text_from_file(filename)

    word_count = count_words(text)
    character_count = count_characters(text)
    paragraph_count = count_paragraphs(text)
    most_common, most_common_frequency = most_common_word(text)
    top_words = word_frequency_stats(text)

    puts "Word Count: #{word_count}"
    puts "Character Count: #{character_count}"
    puts "Paragraph Count: #{paragraph_count}"
    puts "Most Common Word: '#{most_common}' Appears #{most_common_frequency} times"
    puts "Top 10 Most Common Words:"
    top_words.each do |word, frequency|
        puts "'#{word}' - #{frequency} times" 
    end
end

if ARGV.length == 1 
    filename = ARGV[0] 
    analyze_text(filename)
else 
    puts "Usage: ruby script_name.rb <filename>"
end

# Analyze the sample text
filename = 'sample.txt' # Replace with your text file
text = read_text_from_file(filename)

# use `text` ^ to pass as a parameters to your methods

# puts statements to console go here:
