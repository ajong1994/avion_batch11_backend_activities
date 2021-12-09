def count_sum(arr)
    return [].inspect if arr.empty? || arr.nil?
    res = [0,0]
    arr.each{ |x| x > 0 ? res[0] = res[0] + 1 : res[1] = res [1] + x } 
    res.inspect
end

puts count_sum([1,2,3,4,5,-10,-2])
puts count_sum([])