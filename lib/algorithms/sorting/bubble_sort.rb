class BubbleSort
  def self.sort(array)
    n = array.length
    for i in 0..n
      for j in 0..n
        break if n - 1 == j
        if (array[j] > array[j+1])
          temp = array[j]
          array[j] = array[j+1]
          array[j+1] = temp
        end
      end
    end
    array
  end
end

puts BubbleSort.sort([7, 10, 2, 51, 241, 24, 94, 29, 46, 65, 21, 75, 908, 753, 456])