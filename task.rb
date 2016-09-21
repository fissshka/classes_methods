#There is an array of integers (ary).
# Modify it with adding ary[0] (first element of the array) to each even number.
# Don't do it for first and last elements
def modify_arr(ary)
  elem=100
  puts ary.unshift(elem)
  if (ary.each_index{|i| (i%2==0)&&(i!=ary[0])&&(i!=ary[-1])})
  end
  modify_arr([1,2,3,4,5,6,7,8,9,10])
end


def modify_arr(ary)
  elem = ary[0]
  array_element = ary.each
  result = ary.insert(elem)
  for array_element in (i%2==0)
  puts result
  end
end


for i in 0..5
  if i < 2 then
    next
  end
  puts "Value of local variable is #{i}"
end

  #if ary.each.map {|i| (i%2==0)}
    #result = ary.insert(elem)
  #end
  puts result
end

modify_arr([2,3,4,5,6,7,8,9,10])

# common = (st1&st2)
#num = common.length

def number_of_first_matching_chars(string1, string2)
  a = string1.chars
  b = string2.chars
  c = []
  c << a.length << b.length
  num = c.min

  res = []
  num.times {|i| res << (a[i].eql? b[i])}
  puts (res.take_while {|i| (i == true)}).length
end



#There is a string. Find a maximal number (not a digit) in it
def text_non_dig_max (string)
  range = string.scan(/[a-z, A-Z]+/)
  result = range.max_by(&:length).length
  puts result
end
text_non_dig_max ('Hello world')



text_non_dig_max ('Hello worlghghfhgfh89 544gdfdgdggfg46')

  def test_int_max (string)
    range = string.scan(/[0-999]+/)
    result = range.max_by(&:length).length
    puts result
  end


def number_of_first_matching_chars(base_string, compare_string)
  base_array, compare_array = base_string.scan(/./), compare_string.scan(/./)
  counter = 0
  base_array.each_with_index do |elem, i|
    if base_array[i] == compare_array[i]
      counter += 1
    else break
    end
  end
  counter
end

number_of_first_matching_chars('is rainy day', 'Tomorrow will be great')

def matching_chars_string(main_string, compare_string)
  st1 = main_string.chars
  st2 = compare_string.chars
  c = 0
  st1.each_with_index do |el, i|
    if st1[i] == st2[i]
      c +=1
    else break
    end
  end
  puts "There are #{c} commons in both strings."
end
matching_chars_string('Today is rainy day', 'Tomorrow will be great')