load 'car.rb'

c1 = Car.new(1,2,'N', 'LMLMLMLMM')
c1.process_move_string()
puts c1.current_position()

c2 = Car.new(3,3,'E', 'MMRMMRMRRM')
c2.process_move_string()
puts c2.current_position()
