def unique_order(string)
    new_arr = [];
    if string.class == string
        temp_arr = string.split('')
    else
        temp_arr = string
    end
    for i in (0...temp_arr.length)
        unless i == 0
            new_arr << temp_arr[i] if temp_arr[i-1] != temp_arr[i]
        else 
            new_arr << temp_arr[i]
        end
    end
    puts new_arr.inspect
end

unique_order('AABCDDEAAB')
unique_order('AABBCcAD')
unique_order([1,2,2,3])