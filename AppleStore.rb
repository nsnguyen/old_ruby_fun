#AppleStore Class

require_relative 'Gadget'
require_relative 'iphone'

class AppleStore
  #default construtor used
  def initialize()
    @productsold = 0;
    @revenueearned = 0;
  end

  
  def createGadget (make,model,price,height,width,weight,weightscale)
    @productsold += 1;
    @revenueearned +=  price;
    gadget = Gadget.new(make, model,price,height,width,weight,weightscale);

  end
  
  def createiPhone(model)

    @productsold += 1;
    if(model.to_s == 'iPhone6')
      iphone = IPhone6.new(model)
      @revenueearned +=  iphone.price()
      
    elsif(model.to_s == 'iPhone5S')
      iphone = IPhone5S.new(model)
      @revenueearned +=  iphone.price()
      
    elsif(model.to_s == 'iPhone6Plus')
      iphone = IPhone6Plus.new(model)
      @revenueearned +=  iphone.price()
      
    else
      puts('Wrong Iphone')
    end

  end
  
  
  def to_s
    "A store having sold #{@productsold.to_f} product with revenue of $#{@revenueearned.to_f} so far!"
  end
  
end