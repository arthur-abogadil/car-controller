class Car
    attr_accessor :x, :y, :direction, :move_string
    
    def initialize(x,y,direction, move_string)
        @x = x
        @y = y
        @direction = direction
        @move_string = move_string
    end

    def process_move_string()
        @move_string.each_char do |control_code|
             move(control_code)
        end
    end

    def move(control_code)

        if control_code == "L" || control_code == "R"
            change_direction(control_code)
        end 
        
        if control_code == "M"
            if @direction == "N"
                @y += 1
            elsif @direction == "S"
                @y -= 1
            elsif @direction == "E"
                @x += 1
            elsif @direction == "W"
                @x -= 1
            end
        end

    end

    def change_direction(control_code)
        
        if control_code == "L"
            if @direction == "N"
                @direction = "W"
            elsif @direction == "W"
                @direction = "S"
            elsif @direction == "S"
                @direction = "E"
            elsif @direction == "E"
                @direction = "N"
            end
        end

        if control_code == "R"
            if @direction == "N"
                @direction = "E"
            elsif @direction == "E"
                @direction = "S"
            elsif @direction == "S"
                @direction = "W"
            elsif @direction == "W"
                @direction = "N"
            end
        end

    end

    def current_position
        "#{@x} #{@y} #{@direction}"
    end

end 