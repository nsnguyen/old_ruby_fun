#Gadget Class

class Gadget
  #constructor
  def initialize(make, model,price, height, width, weight, weightscale)
    @make = make
    @model = model
    @height = height
    @weight = weight
    @width = width
    @price = price
    @weightscale = weightscale;
  end
  
  #accessor methods
  def make
    @make
  end
  
  def model
    @model
  end
  
  def height
    @height
  end
  
  def weight
    @weight
  end
  
  def width
    @width
  end
  
  def price
    @price
  end
  
  #provide a string representation
  def to_s
    "A #{@price.to_f} #{@model} weighing #{@weight.to_f} #{@weightscale}"

  end
  
end


