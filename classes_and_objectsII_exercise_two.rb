class MyCar
  attr_accessor :color, :year, :model
  

  def self.gas_milage(miles,gallons)
    puts "#{miles/gallons} miles per gallon of gas."
  end

  def to_s
    "This car is a #{self.color}, #{self.year} #{self.model}!"
  end

  def initialize(y,c,m)
    self.year = y
    self.color = c
    self.model = m
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
puts honda

