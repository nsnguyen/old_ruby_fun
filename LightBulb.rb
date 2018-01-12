class LightBulb
  def initialize(watts, on)
    @watts = watts
    @on = on
  end
  
  #acessors
  def watts
    @watts
  end
  
  def on
    @on
  end
  
  #methods
  def turnon
    @on = true
  end
  
  def turnoff
    @on = false
  end
  
  def to_s
    "watts: #{watts} - #{on}"
  end
  
  
end