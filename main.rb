load 'car.rb'

# c1 = Car.new(1,2,'N', 'LMLMLMLMM')
# c1.process_move_string()
# puts c1.current_position()

# c2 = Car.new(3,3,'E', 'MMRMMRMRRM')
# c2.process_move_string()
# puts c2.current_position()

while true do
    puts 'Enter the initial position and direction of the car (e.g. 1 2 N)'
    input = gets.chomp
    str = input.split(' ')
    x = str[0].to_i
    y = str[1].to_i
    direction = str[2]
    puts 'Enter the move string'
    move_string = gets.chomp
    c1 = Car.new(x,y,direction, move_string)
    c1.process_move_string()
    puts 'Current Position is: '
    puts c1.current_position()
end