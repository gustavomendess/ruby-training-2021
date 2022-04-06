class ReorderIndex
  def self.reorder(arr, index)
    temp = [0] * arr.length;

    for i in arr do
      temp[index[i]] = arr[i]
    end
 
    for i in arr do
      arr[i] = temp[i]
      index[i] = i
    end
  end
end

arr = [50, 40, 70, 60, 90]
index = [3, 0, 4, 1, 2]

ReorderIndex.reorder(arr, index)

print("Reordered array is:")
for i in arr do
    print(arr[i] + ' ')
end
 
print("\nModified Index array is:")
for i in arr do
    print(index[i] + ' ')
end