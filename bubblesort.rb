def sort(numbers)
  iterations = 1
  unsorted = true
  while unsorted
    unsorted = false
    (0...numbers.length - 1).each do |i|
      iterations += 1
      if numbers[i] > numbers[i + 1]
        numbers[i], numbers[i + 1] = numbers[i + 1], numbers[i]
        unsorted = true
      end
    end
  end
  [numbers, iterations]
end

p sort([4,3,78,2,0,2, 11, 14, -1, 5, 48, 11, 95, 12]) # 118 iterations
p sort([1,2,3,4,5,6,7,8,9]) # 9 iterations
p sort([9,8,7,6,5,4,3,2,1]) # 73 iterations

