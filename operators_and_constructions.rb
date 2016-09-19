#1. Create method which gets 10 random integers (from 0 to 9) (generate it using while or until)
#   1.1 before output for each next number we should puts "========="
#   1.2 if number is even or odd it should puts string "the number is even" or "the number is odd"
#   1.3 if it's more (or less) than 5 it should puts appropriate string "the number is more (or less) than 5"
#   1.4 in case we've got "0" we should puts "we've got 0"
#   1.5 in each case we should get 2 messages except the '0' case
#2. add to your solution next test
#   2.1 create project
#   2.2 make a random action: create or not a new bug issue
#   2.3 open project page,
#   2.4 open issues tab
#   2.5 if there is a bug present then add self to watchers
#   2.6 if no then create a new bug issue and then add self to watchers
#   2.7 Verify that there is a bug issue and that current user is a watcher
def rand_integer
number = rand(9)
puts "========="
if number ==0
  puts "We've got 0"
  elsif number.odd?
    puts "#{number} is odd"
  elsif number.even?
    puts "#{number} is even"
  else
    puts "#{number} is not FixNum"
end
if number > 5
  puts "#{number} is more than 5"
elsif number < 5
  puts "#{number} is less than 5"
else
  puts "#{number} is equal 5"
end
end