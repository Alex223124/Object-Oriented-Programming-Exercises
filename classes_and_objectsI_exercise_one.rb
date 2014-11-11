class MyCar

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
end

honda = MyCar.new("2005", "Gold", "accord")
honda.current_speed
honda.speed_up(90)
honda.current_speed
honda.brake(50)
honda.current_speed
honda.speed_up(80)
honda.current_speed
honda.brake(120)
honda.current_speed
honda.turn_off_car
