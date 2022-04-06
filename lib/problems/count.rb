class Count
  def self.count(string)
    upper, lower, number, special = 0, 0, 0, 0
    for i in 0..string.length - 1
      if /[[:upper:]]/.match(string[i])
          upper += 1
      elsif /[[:lower:]]/.match(string[i])
          lower += 1
      elsif /[[:digit:]]/.match(string[i])
          number += 1
      else
          special += 1
      end
    end
    ("Upper: '#{upper}' " + "Lower: '#{lower}' " + "Number: '#{number}' " + "Special characters: '#{special}'")
  end
end

puts Count.count('Lorem ipsum+')