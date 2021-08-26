require './lib/dockingstation.rb'


describe DockingStation do
    it { is_expected.to respond_to :release_bike }
     
    
    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'docks a bike' do 
        bike = Bike.new
        expect(subject.dock(bike)).to eq bike
        expect(bike).to be_working
    end 


    describe '#release_bike' do 
    it 'releases bikes that work' do
        bike = Bike.new
        #expect(bike).to be_working
        subject.dock(bike)
        expect(subject.release_bike).to eq bike 
    end 
    end 

    describe '#release_bike' do
    it 'raises an error if docking station is empty' do 
      expect{subject.release_bike}.to raise_error("The Docking Station is empty")
    end
    end

    describe '#dock' do 
    it 'raises an error if docking station is full' do 
        subject.dock(Bike.new)
        expect{subject.dock Bike.new}.to raise_error("The Docking Station is full")
    end 
    end  
    

end