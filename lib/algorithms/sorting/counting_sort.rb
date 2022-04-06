class CountingSort
  def self.sort(array)
    n = array.length
    output = Array.new(n)
    count = Array.new(array.max +1, 0)
    array.each { |e| count[e] += 1 }
    i = 0

    count.size.times do |number|
      count[number].times do
        output[i] = number
        i+=1
      end
    end
    output
  end
end

