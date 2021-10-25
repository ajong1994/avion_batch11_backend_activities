
def get_cycle(n, cycle=0)
    cycle += 1
    if n == 1
        return cycle
    else
        if n % 2 == 1 
            get_cycle(3*n + 1, cycle)
        else 
            get_cycle(n / 2, cycle)
        end
    end

end

def get_max_cycle_test(x, y)
    range_of_cycles = []
    for i in (x..y)
        range_of_cycles << get_cycle(i)
    end
    puts "#{x} #{y} #{range_of_cycles.sort.last}"
end

def get_max_cycle
    puts "\nInput series range:"
    series_start, series_end = gets.chomp.split(" ") #as strings; still need to convert to i
    range_of_cycles = []
    for i in ((series_start.to_i)..(series_end.to_i))
        range_of_cycles << get_cycle(i)
    end
    puts "#{series_start} #{series_end} #{range_of_cycles.sort.last}"
end

puts "\nSample Tests: "
get_max_cycle_test(1,10)
get_max_cycle_test(100,200)
get_max_cycle_test(201,210)
get_max_cycle_test(900,1000)

get_max_cycle