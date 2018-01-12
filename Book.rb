class Book
  def initialize(title, author)
    @title = title
    @author = author
    
  end
  
  #acessor methods
  def title
    @title
  end
  
  def author
    @author
  end
  
  #provide a string representation
  def to_s
    "#{title} #{author}"
  end
  
  
end