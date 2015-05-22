require_relative '../lib/van'

describe Van do
	let(:bike) { Bike.new }
	let(:van) { Van.new}
	


	it 'Shoule be able to accept a bike' do
		expect(van.bike_count).to eq 0
		van.load(bike)
		expect(van.bike_count).to eq 1
	end

	it 'Should release a bike' do
		van.load(bike)
		van.release(bike)
		expect(van.bike_count).to eq 0
	end


	it 'should drop off fixed bikes at docking station' do
	end

	it'should pick up broken bikes at docking station' do
	end

	it 'should pick up fixed bikes at garage' do
	end

	it 'should drop off broken bikes at garage' do
	end

	it 'should know when the docking station is full' do
	end

	it 'should know when it is full' do
	end

	
	


end