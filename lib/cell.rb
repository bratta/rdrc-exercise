class Cell
  attr_accessor :x, :y, :unit
  
  def initialize(x=0,y=0,unit=nil)
    @x = x
    @y = y
    @unit = unit
  end
  
  def to_s
    "#{@x}#{@y}"
  end  
end