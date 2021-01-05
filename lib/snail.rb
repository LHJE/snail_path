class SnailThing

  def self.path(array)
    array_length = array.length
    original_array = array
    return_array = array.shift
    until array == []
      array.each do |element|
        if element == original_array[-1]
          return_array << element.reverse
          array.pop
        elsif
          require "pry"; binding.pry
          return_array << element[-1]
          element.pop
        end
      end
    end
    return_array.flatten
  end


end
