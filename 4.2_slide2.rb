# def print_name(list)
#     temp_arr = []
#     list.map do |x|
#         temp_arr << x[:name]
#     end
#     if temp_arr.length == 1 
#         puts temp_arr[0]
#     elsif temp_arr.length == 2
#         puts "#{temp_arr[0]} & #{temp_arr[1]}"
#     else
#         print "#{temp_arr[0]},"
#         for i in (1...temp_arr.length - 1 ) do
#             print " #{temp_arr[i]}"
#         end
#         puts " & #{temp_arr.last}"
#     end
# end

def print_name(list)
    if list.length == 1 
        puts list[0][:name]
    elsif list.length == 2
        puts "#{list[0][:name]} & #{list[1][:name]}"
    elsif list.length >2
        print "#{list[0][:name]},"
        for i in (1...list.length - 1 ) do
            print " #{list[i][:name]}"
        end
        puts " & #{list.last[:name]}"
    else
        print ""
    end
end


print_name([{name:'Bart'}, {name: 'Lisa'},{name: 'Maggie'}])
print_name([{name:'Bart'}, {name: 'Lisa'}])
print_name([{name:'Bart'}])
print_name([])