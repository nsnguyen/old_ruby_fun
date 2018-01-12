require_relative 'Book'

class Textbook < Book
  def initialize(title, author, course)
    @course = course
    super(title,author)
  end
  
  def course
    @course
  end
  
  def to_s
    "#{title} #{author} #{course}"
  end
  
end
