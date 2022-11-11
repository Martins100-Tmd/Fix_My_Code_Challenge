###
#
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
    low = 0
    while !is_inserted && i < l do
      while i < l do
        low = result[i] < low ? result[i] : low
      end
      result.push(low)
      result.delete_at(result.find_index(low))
    end
    result << i_arg if !is_inserted
end

puts result
