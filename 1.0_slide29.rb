#1
arr = [1,3,5,7,9,11]
number = 3 
puts "#1 Does #{arr.inspect} include #{number}? #{arr.include? number}"

#2 -- but this doesn't correctly validate if input is string
num_input = nil
loop do
    puts "\n#2 Input number between 0 and 100:"
    num_input = gets.chomp.to_i
    break if num_input >= 0 && num_input <= 100
end
case num_input 
when 0..50
    puts "Between 0 and 50" 
else
    puts "Between 51 and 100"
end

#3
arg_input = nil
current_string = ""
while arg_input != "STOP"
    puts "\n#3 Type something which will be appended indefinitely until you type 'STOP':"
    arg_input = gets.chomp
    current_string +=  "#{arg_input} "
    puts current_string
end

#4
def number4
    arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]
    new_arr = []
    arr.each {|num| new_arr.push(num) if num % 2 == 0}
    puts "\n#4 Original array: #{arr}"
    puts "Filtered array containing even digits: #{new_arr.inspect}"
end 

number4