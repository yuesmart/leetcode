#coding: utf-8

#Question: 
# => https://oj.leetcode.com/problems/two-sum/

def two_sum(numbers,target)
  numbers.each_with_index  do |item1,index1|
    index1 = index1 + 1
    numbers[index1..numbers.length].each_with_index do |item2,index2|
      index2 = index2 + 1
      if item1 + item2 == target
        return [index1,index1+index2]
      end
    end
  end
end

puts "two_sum([2,7,11,15],9) => #{two_sum([2,7,11,15],9)}"