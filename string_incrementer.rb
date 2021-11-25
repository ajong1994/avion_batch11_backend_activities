def string_incrementer(string)
    split = nil
    has_digit = false
    string.each_char.with_index.map do |x, i|
        if x.match?(/[[:digit:]]/) 
            split = string.split(x, 2)
            split[1] = x + split[1]
            has_digit = true
            break
        end
    end
    has_digit == false ? (puts string + "1") : (puts split[0] + "#{split[1].to_i + 1}")
    
end

string_incrementer("foo12")
string_incrementer("foo099")
string_incrementer("foo")