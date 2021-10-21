#1
array = [1,2,3,4,5,6,7,8,9,10]
array.each { |a| puts "#1 Number is: #{a}" }

#2
h = {a:1,b:2,c:3,d:4}
puts "\n#2a The value of key:b is: #{h[:b]}"
h[:e] = 5
puts "#2b The new hash is: #{h}"

#3
@contact_data = [["john@email.com","123 Main st.", "555-123-4567"],
    ["avion@email.com", "404 Not Found Dr.", "123-234-3454"]]
@contacts = {"John Cruz" => {}, "Avion School" => {}}

def contact_assigner(name, arr_i)
    @contacts[name][:email] = @contact_data[arr_i][0]
    @contacts[name][:address] = @contact_data[arr_i][1]
    @contacts[name][:phone] = @contact_data[arr_i][2]
end

contact_assigner("John Cruz",0)
contact_assigner("Avion School",1)

puts "\n#3 Adding array nodes to empty hash values: #{@contacts}"

#4
puts "\n#4 Age incrementing: How old are you?"
age = gets.chomp.to_i
i = 1
while i < 5 
    puts "In #{10 * i} years you will be: \n#{age + 10 * i}"
    i += 1
end
