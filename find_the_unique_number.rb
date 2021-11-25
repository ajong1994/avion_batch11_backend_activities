def find_uniq(list)
    list.each {|x| puts x if list.count(x) == 1}  
end

find_uniq(%i[1 1 1 2 1 1])
find_uniq(%i[0 0 0.55 0 0])

