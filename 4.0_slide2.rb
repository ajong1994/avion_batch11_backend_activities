def trolls(arg)
    puts arg.split('').filter{|c| !['a','e','i','o','u'].include?c}.join
end

trolls('here')