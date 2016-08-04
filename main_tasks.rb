def digit_sum(number)
#Create a method which will take a natural number as an argument and will find a sum of all its digits
   sum = 0
   num = number.to_s.chars.map(&:to_i)
   num.each { |i| sum +=i }
   puts sum
end
digit_sum(15)

def test_int_max (string)
#There is a string. Find a maximum number of digits placed in a row in it
  result = string.scan(/[0-9]/).count
  puts result
end
test_int_max ('Hello world 546')

def text_max_num_str (string)
  #There is a string. Find a maximal number (not a digit) in it
  result = string.scan(/[a-z, A-Z]/).count
end
text_max_num_str ('Hello world')

def matching_chars_string(main_string, compare_string)
  #There are two strings. Find number of first chars from first string matching first chars of the second string. Consider two cases:
  #strings are definitely different
  #strings can completely match
  st1 = main_string.chars
  st2 = compare_string.chars
  common = (st1[0..2]&st2[0..2])
  num = common.length
  puts "There are #{num} commons in both strings. Commons are #{common}"
end
matching_chars_string('Today is rainy day', 'Tomorrow will be great')

def even_odd_arr(arr)
  #There is an array of integers. First puts elements with even indexes and then with odd indexes
  even_arr = []
  odd_arr = []
  even_index = arr.find_all{|i| i%2==0}
  odd_index = arr.find_all{|i| i.odd?}
  even_arr.push(even_index)
  odd_arr.push(odd_index)
  print "Even array: #{even_arr}\n Odd array: #{odd_arr}"
end
even_odd_arr([1,2,3,4,5,6,7,8,9,10])

def arr_last_index(ary)
  #There is an array of integers (ary). Puts the index of the last element where ary[0]<ary[i]<ary[-1]
  puts ary.index((ary.each_index{|i| (ary[0]<i)&&(i<ary[-1])}).last)
end
arr_last_index([1,2,3,4,5,6,7,8,-8,-9,-10, -12, -13])

def modify_arr(ary)
    #There is an array of integers (ary). Modify it with adding ary[0] (first element of the array) to each even number. Don't do it for first and last elements
      elem=100
      puts ary.unshift(elem)
      if (ary.each_index{|i| (i%2==0)&&(i!=ary[0])&&(i!=ary[-1])})
      end
    modify_arr([1,2,3,4,5,6,7,8,9,10])
end
