=begin 
The ruby array sort method can use a block to sort various arrays.  The block
must compare between two elements of the array, a and b.  
If a<b, it should evaluate to -1.  
If a==b, it should evaluate to 0.  
And if a>b, it should evaluate to 1.


Here is the start of a program, which you should call sort_blocks.rb.

Note the use of the spaceship operator <=>.  It does what the commented out
lines do, but on one line.

Add to this program. Add additional calls to book_array.sort that pass blocks.  

For your first call to sort, pass a block so that the array is sorted in order of title,
and print out the array.  

For your second call to sort, pass a block so that the array is sorted in order of copies, and print out the array.
=end


class Book
  attr_reader :author, :title, :count
  def initialize(author,title,count)
    @author = author
    @title = title
    @count = count
  end
  def to_s
    "author: #{author} title: #{title} count: #{count}"
  end
end

book_array = []
book_array.push(Book.new("Beatrice Potter","Peter Rabbit",25))
book_array.push(Book.new("Henry Fielding","Tom Jones",12))
book_array.push(Book.new("Bob Woodward","All the President's Men",30))

puts "Sorting alphabetically by author"

new_array = book_array.sort do |a,b|
  author1 = a.author.downcase
  author2 = b.author.downcase
  author1 <=> author2
  # if author1 > author2
  #   1
  # elsif author1 < author2
  #   -1
  # else
  #   0
  # end
end

puts new_array
puts
puts "*" * 80

# ---- by title ----

book_array = []
book_array.push(Book.new("Beatrice Potter","Peter Rabbit",25))
book_array.push(Book.new("Henry Fielding","Tom Jones",12))
book_array.push(Book.new("Bob Woodward","All the President's Men",30))

puts 
puts "Sorting alphabetically by title"


by_title = book_array.sort do |a,b|
  title1 = a.title.downcase
  title2 = b.title.downcase
  title1 <=> title2

end



puts by_title 
puts
puts "*" * 80
# ---- by count ----

book_array = []
book_array.push(Book.new("Beatrice Potter","Peter Rabbit",25))
book_array.push(Book.new("Henry Fielding","Tom Jones",12))
book_array.push(Book.new("Bob Woodward","All the President's Men",30))

puts 
puts "Sorting by count"


by_count = book_array.sort do |a,b|
  count1 = a.count
  count2 = b.count
  count1 <=> count2

end



puts by_count 
