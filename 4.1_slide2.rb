def centuryFromYear(year)
    cent = (year / 100.00);
    puts (cent % cent.floor() > 0 )? cent.to_i + 1 : cent.to_i
end

centuryFromYear(1705)
centuryFromYear(1900)
centuryFromYear(1601)
centuryFromYear(2000)