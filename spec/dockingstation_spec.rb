require './lib/dockingstation.rb'


describe DockingStation do
    it { is_expected.to respond_to :release_bike }
    
    it 'releases bikes that work' do
        bike = subject.release_bike 
        expect(bike).to be_working
    end    
    
    it { is_expected.to respond_to :dock }

end 