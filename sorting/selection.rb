class Selection
  class << self
    def sort(array)
      length = array.length - 1

      for i in 0..length
        min = i

        for j in (i + 1)..length
          min = j if (array[j] < array[min])
        end

        temp = array[i]
        array[i] = array[min]
        array[min] = temp
      end

      show(array)
    end

    def show(array)
      array.join(" ")
    end
  end
end

array = (1..100).to_a.sample(100)
puts Selection.sort(array)
