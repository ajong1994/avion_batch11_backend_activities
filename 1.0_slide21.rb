#1
array = [1,2,3,4,5,6,7,8,9,10]
array.each { |a| puts "Number is: #{a}" }

#2
h = {a:1,b:2,c:3,d:4}
puts h[:b]
h[:e] = 5
puts h

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

puts @contacts

#4
puts "How old are you?"
age = gets.chomp.to_i
i = 1
while i < 5 
    puts "In #{10 * i} years you will be: \n#{age + 10 * i}"
    i += 1
end

#Coding exercise
puts "What number will you check?"
nm = gets.chomp.to_i
limit = Math.log(nm,2).round()
is_integer = false
for x in 1..limit
    if x**2 == nm
        is_integer = true
    end
end
puts is_integer