require_relative 'Book'
require_relative 'Textbook'


# a book by Stephen King


dome = Book.new( "Under The Dome", "Stephen King" )

puts dome    # prints: Under The Dome-Stephen King

# A Harry Potter book

potter = Book.new( "Harry Potter and the Sorceror's 
                    Stone", "J. K. Rowlings" )

puts potter  # prints: Harry Potter and the Sorceror's                Stone-J. K. Rowlings

test = Textbook.new("123","123","123")

puts test