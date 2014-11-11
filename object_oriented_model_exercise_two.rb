module CarSound
  def car_sound(sound)
    puts "#{sound}"
  end
end

class Car
  include CarSound
end

Honda = Car.new

Honda.car_sound("Vroomm")


#A module is a collection of behaviors that can be used in multiple classes,
 # to use them in a class you need to use the 'include' method.