require_relative 'LightBulb'

class Lamb < Lightbulb
  def initialize(make,model,cost,watts, on)
    @make = make
    @model = model
    @cost = cost
    super(watts, on)
  end
  
  #acessors
  def make
    @make
  end
  
  def model
    @model
  end
  
end