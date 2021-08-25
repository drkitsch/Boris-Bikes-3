require './lib/dockingstation.rb'

describe DockingStation do
    it { is_expected.to respond_to :release_bike }
end 