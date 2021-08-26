require './lib/bike.rb'

class DockingStation

  attr_reader :bike 
  
  def release_bike 
    fail "The Docking Station is empty" unless @bike
@bike
  end 



  def dock(object)
    @bike = object

  end 
end

