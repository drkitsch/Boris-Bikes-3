require './lib/bike.rb'

class DockingStation

  attr_reader :bike 
  
  #def initialize
    #@bike_collection = []
  #end

  def release_bike 
    fail "The Docking Station is empty" unless @bike
  @bike
  end 

  def dock(object)
    fail "The Docking Station is full" if @bike
    @bike
    

  end 
end