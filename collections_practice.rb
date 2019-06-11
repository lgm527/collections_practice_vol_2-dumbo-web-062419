def begins_with_r(array)
  array.all? {|v| v.split("").first == "r"}
end

def contain_a(array)
  result = []
  array.each do |i|
    if i.include? "a"
      result << i
    end
  end
  result
end

def first_wa(array)
  array.each do |i|
    if i[0] == 'w' && i[1] == 'a'
      return i
    end
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |i|
    if i.to_s == i
      new_array << i
    end
  end
  new_array
end

def count_elements(array_of_hashes)
  counts = Hash.new(0)
  array_of_hashes.each { |e| counts[e] += 1 }
  return_ar = []
  counts.each do |e, num|
    e.each { |k, v| return_ar << {k => v, :count => num} }
  end
  return_ar
end

def merge_data(k, d)
  merged_h = []
  d.each do |h|
    h.each do |n, i|
      k.each do |k_v|
        merged_h << k_v.merge(i) if k_v.values[0] == n
      end
    end
  end
  merged_h
end

def find_cool(cool)
  cool_a = []
  cool.each do |h|
    h.each do |k, v|
      cool_a << h if v == "cool"
    end
  end
  cool_a
end

def organize_schools(schools)
  schoo = {}
  schools.values.each { |loc|
    schoo[loc.values[0]] = [] }
  schools.each { |sch, loc|
    schoo[loc.values[0]] << sch }
  schoo
end
