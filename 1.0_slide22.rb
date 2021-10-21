
#Coding exercise
puts "\nCoding Exercise - check if number is a perfect square : What number will you check?"
nm = gets.chomp.to_i
is_integer = false
unless nm <= 0
limit = Math.log(nm,2).round()
    for x in 1..limit
        if x**2 == nm
            is_integer = true
        end
    end
end
puts "Coding exercise result: Is number a perfect square? #{is_integer}"