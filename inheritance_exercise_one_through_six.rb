module Off_roadable
  def off_road
    "I can go off roading!"
  end
end


class Vehicle 
  attr_accessor :year, :color, :model
  @@number_of_vehicles = 0

  def self.gas_milage(miles,gallons)
    puts "#{miles/gallons} miles per gallon of gas."
  end

  def total_num_of_vehicles
    puts "There are #{@number_of_vehicles} number of Vehicles"
  end

  def initialize(y,c,m)
    @@number_of_vehicles += 1
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

  def age
    puts "Your #{self.model} is #{years_old} years old"
  end

private

  def years_old
    Time.now.year - self.year.to_i
  end
end


class MyTruck < Vehicle
  ENGINE = "v8"
  include Off_roadable
end


class MyCar < Vehicle
  ENGINE = "v6"
  def to_s
    "This car is a #{self.color}, #{self.year} #{self.model}!"
  end
end

honda = MyCar.new("2005", "Gold", "accord")
puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors
puts honda.age


