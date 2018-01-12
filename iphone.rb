
require_relative 'Gadget'

#define class iPhone5S
class IPhone5S < Gadget
  def initialize(model)
    super(:iPhone, model, 99.00, 4.87, 3.95, 2.31, :ounces)
  end
  
  #provide a string representation
  def to_s
    "A #{@price.to_f} #{@model} weighing #{@weight.to_f} #{@weightscale}"
  end
end

class IPhone6 < Gadget
  def initialize(model)
    super(:iPhone, model, 199.00, 5.44, 4.55, 2.64, :ounces)
  end
  
  #provide a string representation
  def to_s
    "A #{@price.to_f} #{@model} weighing #{@weight.to_f} #{@weightscale}"
 end

end

class IPhone6Plus < Gadget
  def initialize(model)
    super(:iPhone, model, 299.00, 6.22, 6.07, 3.06, :ounces)
  end
  
  #provide a string representation
  def to_s
   "A #{@price.to_f} #{@model} weighing #{@weight.to_f} #{@weightscale}"
  end
end