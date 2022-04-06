class FindMissingNumber
  def self.find(array)
    n = array.length

    total = ((n + 1) * (n + 2) / 2)
    sum = array.sum

    total - sum
  end
end