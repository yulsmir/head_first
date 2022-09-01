class Vehicle
  attr_accessor :odometer, :gas_used

  def accelerate
    puts "Floor it!"
  end

  def sound_horn
    puts "Beep! Beep!"
  end

  def steer
    puts "Turn front 2 wheels."
  end

  def milage
    return @odometer / @gas_used
  end
end

class Car < Vehicle
end

class Truck < Vehicle
  def load_bed(contents)
    puts "Securiting #{contents} in the truck bed."
    @cargo = contents
  end
end

class Motorcycle < Vehicle
  def steer
    puts "Turn front wheel."
  end
end

truck = Truck.new
truck.accelerate
truck.steer
truck.load_bed("sand")

car = Car.new
car.odometer = 14345
car.gas_used = 945

puts "Lifetime MPG: "
puts car.milage

motorcycle = Motorcycle.new
motorcycle.steer
