# using a while loop to print 1 to 20
num = 1
while num <= 20
    puts num
    num = num + 1

# if else statement to check if even or odd
    if num % 2 == 0 
        print "Even "
    else
        print "Odd "
    end
end

# using a for loop to print 1 to 20
num = 1
for num in 1..20
    puts num
# if else statement to check if even or odd
    if num % 2 == 0
        puts "Even "
    else
        puts "Odd "
    end
end