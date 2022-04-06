class ReverseAndRotate
  def self.rotate(array, k, n)
    reverse(array, 0, n - 1)
    reverse(array, 0, k - 1)
    reverse(array, k, n - 1)
    array
  end

  def self.reverse(array, start, final)
    i = start
    j = final
    while i < j
      temp = array[i]
      array[i] = array[j]
      array[j] = temp
      i+=1
      j-=1
    end
    array
  end
end

array = [1, 2, 3, 50, 40, 100, 230]

puts ReverseAndRotate.rotate(array, 1, 6)

