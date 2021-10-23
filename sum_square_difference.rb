
def sum_squares(arr)
    #shorthand for reduce(0){|sum, number| sum + number}
    return arr.map{|x| x**2}.reduce(&:+)
end

def squares_sum(arr)
    return arr.reduce(&:+)**2
end

def get_square_diff(arr)
    puts (sum_squares(arr) - squares_sum(arr)).abs
end

get_square_diff(Array (1..100))