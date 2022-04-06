class FindThree
  def self.find(arr)
    positions = { first: 0, second: 0, third: 0 }
  
    arr.each do |item|
      if item > positions[:first]
        positions[:third] = positions[:second]
        positions[:second] = positions[:first]
        positions[:first] = item
  
      elsif item < positions[:first] && item > positions[:second]
        positions[:third] = positions[:second]
        positions[:second] = item
      elsif item < positions[:second] && item > positions[:third]
        positions[:third] = item
      end
    end
    positions
  end
end

arr = [12, 13, 1, 10, 34, 1]

FindThree.find(arr).each do |key, value|
  p "#{key}: #{value}"
end
