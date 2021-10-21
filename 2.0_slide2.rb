#Coding Exercise: Find the smallest integer in the array without using .min or .sort
def find_minimum(arr)
    #Loop through each array element, and for each one:
    arr.each do |i|
        #Initialize that it's the minimum unless proven otherwise
        minimum = true
        #Next, create a nested loop for all the array elements
        arr.each do |j|
            #Exclude the current index that you're on
            unless i == j
                #Compare the nested index with the parent index. If it's greater than the parent index, update the minimum variable to false
                if !(i < j)
                    minimum = false
                end
            end
        end
        #If at the end of the nested loop, the minimum variable is still true, that means the comparison triggers did not execute
        #and the current parent index contains the smallest integer
        if minimum == true 
            return puts i
        end
    end
end

arr1 = [34, 15, 88, 2]
arr2 = [34, -345, -1, 100]

find_minimum(arr1)
find_minimum(arr2)