=begin

Write a program that collects 5 keys and 5 values from the user, and stores them in a hash.  


Write a function that accepts the hash as optional parameters and prints out an array of keys and an array of values.  
Call the function within your program so you know it works.

=end



def hash_to_array 
    u_hash = {}
    i = 0
    while i <= 4 do
        print "Name one of your favourite artist? "
        answer1 = gets.chomp
        print "What is your fave song from this artist? "
        answer2 = gets.chomp
        u_hash.store("#{answer1}", "#{answer2}")
        i += 1
    end    
    puts
    puts "These are your fave artists: #{u_hash.keys}" 
    puts "These are your fave songs from these artists: #{u_hash.values}" 
    

end

puts hash_to_array

