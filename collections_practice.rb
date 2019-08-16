# your code goes here
def begins_with_r(array)
    array.each do |item|
        if item[0] != "r"
            return false
        end
    end
    return true
end

def contain_a(array)
    array1 = []
    array.each do |item|
        if item.include?("a")
            array1 << item
        end
    end
    array1
end

def first_wa(array)
    array.each do |item|
        if item[0] == "w" && item[1] == "a"
            return item
        end
    end
end

def remove_non_strings(array)
    array1 = []
    array.each do |item|
        if item.class == String 
            array1 << item
        end
    end
    array1
end

def count_elements(array)
    array.each do |original_hash|
        original_hash[:count] = 0
        name = original_hash[:name]
        array.each do |hash|
          if hash[:name] == name
            original_hash[:count] += 1
          end
        end
    end.uniq
end
    
def merge_data(array1, array2)
    new_array = []
    array1.each_with_index do |element, index|
      new_array.push(array1[index].merge(array2[index]))
    end
    new_array
end

def find_cool(array)
    array.select do |hash|
        hash[:temperature] == "cool"
    end
end

def organize_campuses(hash)
    organized_schools = {}
    hash.each do |name, location_hash|
      location = location_hash[:location]
      if organized_schools[location]
        organized_schools[location] << name
      else
        organized_schools[location] = []
        organized_schools[location] << name
      end
    end
    organized_schools
  end