class LinearSearch
  def self.search(array, search_item)
    if search_item.nil?
      puts 'Por favor, digite um número válido'
    else
      array.each_with_index do |arr, index|
        @exists = index if arr == search_item.to_i
      end
      if @exists
        puts "Elemento encontrado na posição #{@exists}"
      else
        puts 'Elemento não existe no array'
      end
    end
  end
end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
search_item = 3

LinearSearch.search(array, search_item)
