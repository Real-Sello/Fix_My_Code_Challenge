###
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i
    
    # insert result at the right position
    is_inserted = false
    i = 0
    l = result.size
    while !is_inserted && i < l do
        if result[i] <= i_arg
            i += 1
        else
            result.insert(i, i_arg)
            is_inserted = true
            break
        end
    end
    result << i_arg if !is_inserted
end

puts result
###
#   fixed the while loop because it only compared the element at index i with the #   current integer argument. If there were other elements in the array that were #   greater than the current integer argument, the program would not be able to #   insert the integer argument at the correct position.
#
#   So if we increment the index i until it reaches an element that is greater
#   than or equal to the current integer argument. It then inserts the integer
#   argument at the current position, i, and sets the is_inserted flag to true
#
###