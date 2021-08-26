require './lib/bike.rb'

class DockingStation

  attr_reader :bike 
  
  def release_bike 
  Bike.new
  end

  def dock(object)
    @bike = object

  end 
end

