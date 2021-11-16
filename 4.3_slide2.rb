def encode(string)
    puts string.split("").map! {|x| %w[a e i o u].include?(x) ? %w[a e i o u].find_index(x) + 1 : x }.join
end
def decode(string)
    puts string.split("").map! {|x| %w[1 2 3 4 5].include?(x) ? %w[a e i o u][%w[1 2 3 4 5].find_index(x)] : x }.join
end

encode('alex')
decode('1l2x')