load './car.rb'

describe 'Car' do
    it 'should be able to accept initial car position and process a move string' do
        c = Car.new(1,2,'N', 'LMLMLMLMM')
        c.process_move_string()
        current_position = c.current_position()
        expect(current_position).to eq('1 3 N')
    end
end