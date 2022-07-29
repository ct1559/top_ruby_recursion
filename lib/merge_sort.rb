# frozen_string_literal: true

def merge_sort(arr)
  return arr if arr.length < 2

  arr_first_half = arr.slice(0, arr.length / 2)
  arr_second_half = arr.slice(arr_first_half.length, arr.length - 1)
  merge(merge_sort(arr_first_half), merge_sort(arr_second_half))
end

def merge(arr_1, arr_2, sorted_arr = [])
  return sorted_arr if arr_1.empty? && arr_2.empty?

  if arr_1.empty?
    sorted_arr.push(arr_2.slice!(0, arr_2.length)).flatten!
  elsif arr_2.empty?
    sorted_arr.push(arr_1.slice!(0, arr_1.length)).flatten!
  else
    arr_1[0] < arr_2[0] ? sorted_arr << arr_1.shift : sorted_arr << arr_2.shift
  end
  merge(arr_1, arr_2, sorted_arr)
end

# Random number list to pass into merge sort
num_arr = []
10.times { num_arr << rand(100) }

p num_arr

p merge_sort(num_arr)
