# Create an array of fruits & add solution
fruits = ["apple", "banana", "cherry", "date", "fig", "grape"]

# print the entire array
puts fruits

# print the first and last elements of array
def first_and_last(fruits)
    fruits.values_at(0, 5)
end
first_and_last(fruits)

# add kiwi to end of array
fruits.push("kiwi")

# remove cherry from array
fruits.delete("cherry")

# print modified array
print fruits

# check if 'apple' is in array
fruits.each do |fruit|
    if fruit == "apple"
        puts "Apple exists in this array!"
    else
        puts "Apple doesn't exist in this array!"
    end
end

# calcuate and print total number of fruit
puts fruits.count()

# stretch goal attempt
# user adds fruit
puts "What fruit would you like to add?"
fruit = gets.chomp
if fruits.include?(fruit)
    puts "This fruit is already added!"
else
    fruits.push(fruit)
    puts fruits
end 

# sort fruits
fruits.sort! do |first_fruit, second_fruit|
    first_fruit <=> second_fruit
end 



# Create a hash for a student & add solution
student = {
    "name" => "John Smith"
    "age" => 25
    "major" => "Computer Science"
}
# print the enitre hash
puts student

# only print name value
student["name"]

# add new key value gpa to hash
student["gpa"] = 3.7

# print modified hash
puts student

student.each do |key|
    if key == "gender"
        puts "Gender exists in this array!"
    else
        puts "Gender doesn't exist in this array!"
    end
end