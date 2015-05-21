require_relative '../lib/docking_station'

describe DockingStation do
	let(:bike) { Bike.new }
	let(:station) { DockingStation.new}
	let (:station) { DockingStation.new :capacity => 20}
	
	it 'Should be able to accept a bike' do
		expect(station.bike_count).to eq 0
		station.dock(bike)
		expect(station.bike_count).to eq 1
	end

	it 'Should release a bike' do
		station.dock(bike)
		station.release(bike)
		expect(station.bike_count).to eq 0

	end

	it 'Should know when it is full' do
		expect(station.full?).to be false
		20.times { station.dock(bike) }
		expect(station.full?).to be true
	end

	it 'Should not accept a bike if it is full' do
		20.times { station.dock(bike) }
		expect { station.dock(bike) }.to raise_error RuntimeError
	end

	it 'Should provide the list of available bikes' do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break
		station.dock(working_bike)
		station.dock(broken_bike)
		expect(station.available_bikes).to eq([working_bike])
	end


end