# Homework: Word Analyzer

Write a Ruby program that analyzes a list of words and performs the following tasks:

1. Checks if each word in the list is a palindrome. (_a word, phrase, or sequence that reads the same backward as forward e.g madam, radar, level_ )
2. Checks if each word contains the letter 'e.'
3. Counts the total number of characters (letters) in the list of words.
4. Replaces any occurrence of the word 'ruby' with 'Python.'


#### Requirements:

1. Create an array of words.
2. Use a `for` loop to iterate through each word in the list.
3. For each word, use if/else statements, string methods, and logical operators to:
    - Check if it's a palindrome (a word that reads the same forwards and backwards).
    - Check if it contains the letter 'e.'
    - Count the total number of characters (letters) in the word.
    - Replace 'ruby' with 'Python' if it appears in the word.
4. Print the results for each word in a clear and readable format.

_______
Remember to use appropriate string methods we learned (e.g., `.include`, `.length`, `.downcase`, `.gsub`) and logical operators (`&&` and `||`) as needed.

Sample Output:

For a list of words like: `["level", "elephant", "ruby", "book", "hello"]`

The program might produce output like:

```
Word: level
- Palindrome: Yes
- Contains 'e': No
- Character Count: 5
- After Replacement: level

Word: elephant
- Palindrome: No
- Contains 'e': Yes
- Character Count: 8
- After Replacement: elephant

Word: ruby
- Palindrome: No
- Contains 'e': No
- Character Count: 4
- After Replacement: Python

Word: book
- Palindrome: No
- Contains 'e': No
- Character Count: 4
- After Replacement: book

Word: hello
- Palindrome: No
- Contains 'e': Yes
- Character Count: 5
- After Replacement: hello

```

#### Stretch Goal: Anagram Checker

In addition to the existing requirements, modify the program to check whether any two words in the list are anagrams of each other. An anagram is a word or phrase formed by rearranging the letters of another word or phrase. If anagrams are found, print the pairs of anagrams.

Example:

For a list of words like `["listen", "silent", "heart", "earth", "ruby", "Python"]`, the program should identify and print the anagram pairs:

```
Anagram Pairs:
- "listen" and "silent"
- "heart" and "earth"
```