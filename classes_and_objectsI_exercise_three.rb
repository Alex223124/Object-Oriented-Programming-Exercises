class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(y,c,m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You hit the gas and acelerate by #{number} mph"
  end

  def brake(number)
    @current_speed -= number
    puts "You push the break and decelerate by #{number} mph"
  end

  def turn_off_car
    @current_speed = 0
    puts "Lets turn off the car now"
  end

  def current_speed
    puts "You are now going #{@current_speed} mph"
  end

  def spray_paint(color)
    self.color = color
    puts "Paint job successful, your #{@model} is now #{color}"
  end

end

honda = MyCar.new("2005", "Gold", "accord")

honda.color = "White" 
puts honda.color
puts honda.year
honda.spray_paint("green")
puts honda.color

