=begin
Write a method that returns in an array all the numbers between 1 and 100 that are divisible by 2 or 3 or 5. 
Then call the method in your program and print out what it returns.  Call the program divisible.rb.
=end

# def my_method(i) 
#     num = 1
#     res = []
#     while  (num <= 100) do
#         if num % i == 0
#             res << num 
#         end
#         num += 1
#     end
#     puts "These numbers are divisible by #{i}: #{res.inspect}"
# end


# my_method(2) 
# my_method(3) 
# my_method(5) 

# def my_method() 
#     num = 1
#     div_by = [2, 3, 5]
#     res = []

#     div_by.each do |i|
#         puts i
#         while  (num <= 100) do
#             if num % i == 0
#                 res << num 
#             end
#             num += 1
#         end
#         puts "These numbers are divisible by #{i}: #{res.inspect}\n\n"
#     end
    
   
# end

# my_method

# def my_method() 
#     num = 1
#     res = []
#     [2, 3, 5].each do |i|
#         while  (num <= 100) do
#             if num % i == 0
#                 res << num 
#             end
#             num += 1
#         end
#         puts "These numbers are divisible by #{i}: #{res.inspect}\n\n"
#     end

# end

# my_method

# #[2, 3, 5].each {|i| my_method(i)}
    


# my_method

def divide
    result = []
    (1..100).each do |i|
        if i % 2 == 0 || i % 3 == 0 || i % 5 == 0
            result << i
        end
    end
    puts result.inspect
end
divide