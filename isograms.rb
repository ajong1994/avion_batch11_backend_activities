def is_isogram(input)
    temp = input.split('')
    isogram = true;
    for i in (0...temp.length)
        for j in (1...temp.length)
            unless i == j
                if temp[j].downcase == temp[i].downcase
                    return puts isogram = false
                end
            end
        end
    end
    return puts isogram;
end

is_isogram("Dermatoglyphics")
is_isogram("aba")
is_isogram("moOse")