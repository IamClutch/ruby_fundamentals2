class Rover
  def initialize(xcoord, ycoord, direction)
    @xcoord = xcoord
    @ycoord = ycoord
    @direction = direction
  end


  def move
    case  @direction
    when "N"
      @ycoord += 1
    when "E"
      @xcoord += 1
    when "S"
      @ycoord -= 1
    when "W"
      @xcoord -= 1
  end
end




  def turn(new_direction)
    case new_direction
    when "L"
      @direction = "W" if @direction == "N"
      @direction = "E" if @direction == "S"
      @direction = "N" if @direction == "E"
      @direction = "S" if @direction == "W"

    when "R"
      @direction = "E" if @direction == "N"
      @direction = "N" if @direction == "W"
      @direction = "W" if @direction == "S"
      @direction = "S" if @direction == "E"

  end
end

def current_position
  puts "Current position is #{@xcoord}, #{@ycoord} facing the direction #{@direction} "
end
end
rover = Rover.new(3,2,"N")
rover.turn("L")
rover.current_position
