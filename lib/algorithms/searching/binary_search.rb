class BinarySearch
  def self.search(search_item, array)
    first = 0
    last = array.length - 1
  
    while first <= last
      i = (first + last) / 2
  
      if array[i] == search_item
        return "#{search_item} Encontrado na posição #{i}"
      elsif array[i] > search_item
        last = i - 1
      elsif array[i] < search_item
        first = i + 1
      end
    end
  end
end

search_item = 5
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 15, 230, 210]

if search_item.nil?
  puts 'Por favor, digite um número válido'
else
  @exists = BinarySearch.search(search_item.to_i, array)

  if @exists
    puts @exists
  else
    puts 'Elemento não existe no array'
  end
end

